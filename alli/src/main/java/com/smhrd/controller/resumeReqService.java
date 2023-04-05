package com.smhrd.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.command.Command;
import com.smhrd.model.FrameworkDAO;
import com.smhrd.model.FrameworkVO;
import com.smhrd.model.LanguageDAO;
import com.smhrd.model.LanguageVO;
import com.smhrd.model.LicenseDAO;
import com.smhrd.model.LicenseVO;
import com.smhrd.model.OsDAO;
import com.smhrd.model.OsVO;
import com.smhrd.model.resumeDAO;
import com.smhrd.model.resumeVO;

public class resumeReqService implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {

		String moveURL = null;

		String path = request.getServletContext().getRealPath("./file");
		System.out.println("저장위치 : " + path);

		int maxSize = 10 * 1024 * 1024;

		String encoding = "UTF-8";

		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		MultipartRequest multi;

		try {
			multi = new MultipartRequest(request, path, maxSize, encoding, rename);

			String user_id = multi.getParameter("user_id");
			String resume_title = multi.getParameter("resume_title");
			String picture = multi.getFilesystemName("picture");
			if(picture == null) {
				picture = "no_picture.png";
			}
			String user_name = multi.getParameter("user_name");
			String date_birth = multi.getParameter("date_birth");
			String gender = multi.getParameter("gender");
			String user_email = multi.getParameter("user_email");
			String user_tel = multi.getParameter("user_tel");
			String user_tel2 = multi.getParameter("user_tel2");
			String address = multi.getParameter("address");
			String school_division = multi.getParameter("school_division");
			String school_name = multi.getParameter("school_name");
			String major = multi.getParameter("major");
			String graduation_status = multi.getParameter("graduation_status");
			String other_license = multi.getParameter("other_license");
			String career_date = multi.getParameter("career_date");
			String career = multi.getParameter("career");
			String award = multi.getParameter("award");
			String self_introduction = multi.getParameter("self_introduction");
			String file_name = multi.getFilesystemName("file_name");
			if(file_name == null) {
				file_name = "no_file";
			}
			String url = multi.getParameter("url");
			String hope_salary = multi.getParameter("hope_salary");
			String hope_area = multi.getParameter("hope_area");
			String hope_area2 = multi.getParameter("hope_area2");
			String on_off = multi.getParameter("on_off");

			System.out.println(user_id);
			System.out.println(resume_title);
			System.out.println(user_name);
			System.out.println(picture);

			resumeVO vo = new resumeVO(user_id, user_name, user_tel, user_email, date_birth, hope_area, resume_title,
					address, self_introduction, gender, school_division, school_name, graduation_status, hope_salary,
					picture, file_name, major, career, award, url, hope_area2, on_off, user_tel2, career_date,
					other_license);

			resumeDAO dao = new resumeDAO();

			int cnt = dao.insertResume(vo);

			if (cnt > 0) {
				System.out.println("진입");
				resumeDAO resumeDAO = new resumeDAO();
				resumeVO select_resumeVO = resumeDAO.selectResumeNum(user_id);

				BigDecimal resume_num = select_resumeVO.getResume_num();
				System.out.println(resume_num);
				String[] languages = multi.getParameterValues("languages");
				String[] frameworks = multi.getParameterValues("frameworks");
				String[] oss = multi.getParameterValues("oss");
				String[] licenses = multi.getParameterValues("licenses");
				List<String> languagesLevelsList = new ArrayList<>();
				List<String> frameworksLevelsList = new ArrayList<>();
				List<String> ossLevelsList = new ArrayList<>();
				List<String> licensesLevelsList = new ArrayList<>();
				if (languages != null) {
					for (int i = 0; i < languages.length; i++) {
						String languagesLevel = multi.getParameter(languages[i]);
						if (languagesLevel != null) {
							languagesLevelsList.add(languagesLevel);
						}
					}
				}

				if (frameworks != null) {
					for (int i = 0; i < frameworks.length; i++) {
						String frameworkLevel = multi.getParameter(frameworks[i]);
						if (frameworkLevel != null) {
							frameworksLevelsList.add(frameworkLevel);
						}
					}
				}

				if (oss != null) {
					for (int i = 0; i < oss.length; i++) {
						String ossLevel = multi.getParameter(oss[i]);
						if (ossLevel != null) {
							ossLevelsList.add(ossLevel);
						}
					}
				}

				if (licenses != null) {
					for (int i = 0; i < licenses.length; i++) {
						String licensesLevel = multi.getParameter(licenses[i]);
						if (licensesLevel != null) {
							licensesLevelsList.add(licensesLevel);
						}
					}
				}
				String[] languagesLevels = languagesLevelsList.toArray(new String[0]);
				String[] frameworksLevels = frameworksLevelsList.toArray(new String[0]);
				String[] ossLevels = ossLevelsList.toArray(new String[0]);
				String[] licensesLevels = licensesLevelsList.toArray(new String[0]);

				LanguageDAO lagnguageDAO = new LanguageDAO();
				FrameworkDAO frameworkDAO = new FrameworkDAO();
				OsDAO osDAO = new OsDAO();
				LicenseDAO licenseDAO = new LicenseDAO();

				if (languages != null) {
					for (int i = 0; i < languagesLevels.length; i++) {
						System.out.println(languages[i] + " - " + languagesLevels[i]);
						if (languagesLevels[i] != null) {
							LanguageVO languageVo = new LanguageVO(resume_num, languages[i], languagesLevels[i]);
							int cnt2 = lagnguageDAO.insertLanguages(languageVo);
							if (cnt2 > 0) {
								System.out.println("언어성공");
							} else {
								System.out.println("언어실패");
							}
						}
					}
				}
				if (frameworks != null) {
					for (int i = 0; i < frameworksLevels.length; i++) {
						System.out.println(frameworks[i] + " - " + frameworksLevels[i]);
						if (frameworksLevels[i] != null) {
							FrameworkVO frameworkVO = new FrameworkVO(resume_num, frameworks[i], frameworksLevels[i]);
							int cnt2 = frameworkDAO.insertFrameworks(frameworkVO);
							if (cnt2 > 0) {
								System.out.println("프레임워크성공");
							} else {
								System.out.println("프레임워크실패");
							}
						}
					}
				}
				if (oss != null) {
					for (int i = 0; i < ossLevels.length; i++) {
						System.out.println(oss[i] + " - " + ossLevels[i]);
						if (ossLevels[i] != null) {
							OsVO osVO = new OsVO(resume_num, oss[i], ossLevels[i]);
							int cnt2 = osDAO.insertOss(osVO);
							if (cnt2 > 0) {
								System.out.println("운영체제성공");
							} else {
								System.out.println("운영체제실패");
							}
						}
					}
				}
				if (licenses != null) {
					for (int i = 0; i < licensesLevels.length; i++) {
						System.out.println(licenses[i] + " - " + licensesLevels[i]);
						if (licensesLevels[i] != null) {
							LicenseVO licenseVO = new LicenseVO(resume_num, licenses[i]);
							int cnt2 = licenseDAO.insertLicenses(licenseVO);
							if (cnt2 > 0) {
								System.out.println("자격증성공");
							} else {
								System.out.println("자격증실패");
							}
						}
					}
				}

				moveURL = "boardJob.jsp";

			} else {

				HttpSession session = request.getSession();
				moveURL = "boardJob.jsp";
				String fail = "fail";
				session.setAttribute("fail", fail);

			}

			return moveURL;
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return "index.jsp";

	}
}
