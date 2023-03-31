package com.smhrd.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.resumeDAO;

public class printDeleteService implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = "";
		
		BigDecimal resume_num = new BigDecimal(request.getParameter("resume_num"));
		System.out.println(resume_num);
		// MemereDAO -> deleteMember() 만들기
		resumeDAO dao = new resumeDAO();
		//int cnt = dao.deletePrint(resume_num);
		
		//if(cnt > 0) {
			System.out.println("삭제 성공");
			moveURL = "boardJob.jsp";
		//}else {
			System.out.println("삭제 실패");
		//	moveURL = "boardJob.jsp";
		//}
		return moveURL;
	}

}
