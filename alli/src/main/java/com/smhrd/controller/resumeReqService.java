package com.smhrd.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.LanguageDAO;
import com.smhrd.model.LanguageVO;
import com.smhrd.model.resumeDAO;
import com.smhrd.model.resumeVO;

public class resumeReqService implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		
		String user_id = request.getParameter("user_id");
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
		String other_license = request.getParameter("other_license");
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
		
		System.out.println(user_id);
		System.out.println(resume_title);
		System.out.println(user_name);
		String moveURL = null;
		
		resumeVO vo = new resumeVO(user_id, user_name, user_tel, user_email, date_birth, hope_area, resume_title, address, self_introduction, gender, school_division, school_name, graduation_status, hope_salary, picture, file_name, major, career, award, url, hope_area2, on_off, user_tel2, career_date, other_license);
				
		resumeDAO dao = new resumeDAO();
		
		int cnt = dao.insertResume(vo);
		
		if(cnt > 0) {
			
			BigDecimal resume_num = vo.getResume_num();
			System.out.println(resume_num);
			String[] languages = request.getParameterValues("languages");
			List<String> languagesLevelsList = new ArrayList<>();
			for (int i = 0; i < languages.length; i++) {
			    String languagesLevel = request.getParameter(languages[i]);
			    if (languagesLevel != null) {
			    	languagesLevelsList.add(languagesLevel);
			    }
			}
			String[] languagesLevels = languagesLevelsList.toArray(new String[0]);
			
			LanguageDAO lagnguageDAO = new LanguageDAO();
			
			System.out.println("Selected radio button values:");
			for (int i = 0; i < languagesLevels.length; i++) {
			    System.out.println(languages[i] + " - " + languagesLevels[i]);
			    LanguageVO languageVo = new LanguageVO(resume_num, languages[i], languagesLevels[i]);
			    
			    int cnt2 = lagnguageDAO.insertLanguages(languageVo);
			    if(cnt2 > 0) {
			    	System.out.println("성공");
			    }else {
			    	System.out.println("실패");
			    }
			}
			
			moveURL = "boardJob.jsp";
			
		}else {
			
			HttpSession session = request.getSession();
			moveURL = "boardJob.jsp";
			String fail = "fail";
			session.setAttribute("fail", fail);
			
		}

		return moveURL;
	}
	
	
	
	
	

}
