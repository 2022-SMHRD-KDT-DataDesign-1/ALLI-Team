package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;

public class testService implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
	    String[] selectedLanguages = request.getParameterValues("languages");
	    if (selectedLanguages != null) {
	        for (String language : selectedLanguages) {
	            System.out.println("테스트 : " + language);
	        }
	    }
		return "boardEmp2.jsp";
	}

}
