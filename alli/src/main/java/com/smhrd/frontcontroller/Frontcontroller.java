package com.smhrd.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.controller.cmpJoinService;
import com.smhrd.controller.cmpLoginService;
import com.smhrd.controller.userJoinService;
import com.smhrd.controller.userLoginService;

@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[Frontcontroller]");

		request.setCharacterEncoding("UTF-8");

		String reqURI = request.getRequestURI();
		System.out.println("어디 주소 : " + reqURI);

		String contextPath = request.getContextPath();
		System.out.println(contextPath);

		String result = reqURI.substring(contextPath.length() + 1);
		System.out.println("최종 요청 : " + result);

		Command service = null;

		if (result.equals("userJoinService.do")) {

			service = new userJoinService();

		}else if(result.equals("cmpJoinService.do")) {
			
			service = new cmpJoinService();
			
		}else if(result.equals("userLoginService.do")) {
			
			service = new userLoginService();
			
		}else if(result.equals("cmpLoginService.do")) {
			
			service = new cmpLoginService();
			
		}
		String moveURL = service.excute(request, response);
		response.sendRedirect(moveURL);

	}

}
