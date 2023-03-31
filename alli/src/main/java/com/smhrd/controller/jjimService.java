package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.jjimDAO;
import com.smhrd.model.jjimVO;

public class jjimService implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
	
		  String cmp_name = request.getParameter("cmp_name");
		  int resume_num = Integer.parseInt(request.getParameter("resume_num"));
		  
		  System.out.println(cmp_name);
		  System.out.println(resume_num);
		
		  jjimVO vo = new jjimVO(cmp_name, resume_num);
		  jjimDAO dao = new jjimDAO(); 
		  int cnt = dao.insertjjim(vo);
		  
			/*
			 * if(list != null) { System.out.println("개발T 성공"); HttpSession session =
			 * request.getSession(); session.setAttribute("developList", list); moveURL
			 * ="boardEmp.jsp";
			 * 
			 * } else {
			 * 
			 * System.out.println("개발T 실패"); }
			 */
		 
		return "boardEmp.jsp";
	}

}
