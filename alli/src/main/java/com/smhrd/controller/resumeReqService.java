package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;

public class resumeReqService implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
		String resume_title = request.getParameter("resume_title");
		String picture = request.getParameter("picture");
		String user_name = request.getParameter("user_name");
		String date_birth = request.getParameter("date_birth");
		String gender = request.getParameter("gender");
		String user_email = request.getParameter("user_email");
		String user_tel = request.getParameter("user_tel");
		String user_tel2 = request.getParameter("user_tel2");
		String address = request.getParameter("address");
		String school_division = request.getParameter("school_division");
		String school_name = request.getParameter("school_name");
		String major = request.getParameter("major");
		String graduation_status = request.getParameter("graduation_status");
		String other_licens = request.getParameter("other_licnes");
		String career_date = request.getParameter("career_date");
		String career = request.getParameter("career");
		String award = request.getParameter("award");
		String self_introduction = request.getParameter("self_introduction");
		String file_name = request.getParameter("file_name");
		String url = request.getParameter("url");
		String hope_salary = request.getParameter("hope_salary");
		String hope_area = request.getParameter("hope_area");
		String hope_area2 = request.getParameter("hope_area2");
		String on_off = request.getParameter("on_off");
		
		return null;
	}
	
	
	
	
	

}
