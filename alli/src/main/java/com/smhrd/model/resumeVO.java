package com.smhrd.model;

public class resumeVO {
	
	private int resume_num;
	private String user_id;
	private String user_name;
	private String user_tel;
	private String user_email;
	private String date_birth;
	private String hope_area;
	private String resume_title;
	private String addess;
	private String self_introduction;
	private String gender;
	private String school_division;
	private String school_name;
	private String craduation_status;
	private String hope_salary;
	private String picture;
	private String file_name;
	private String major;
	private String career;
	private String award;
	private String url;
	private String hope_area2;
	private String on_off;
	
	public resumeVO(int resume_num, String user_id, String user_name, String user_tel, String user_email,
			String date_birth, String hope_area, String resume_title, String addess, String self_introduction,
			String gender, String school_division, String school_name, String craduation_status, String hope_salary,
			String picture, String file_name, String major, String career, String award, String url, String hope_area2,
			String on_off) {
		super();
		this.resume_num = resume_num;
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_tel = user_tel;
		this.user_email = user_email;
		this.date_birth = date_birth;
		this.hope_area = hope_area;
		this.resume_title = resume_title;
		this.addess = addess;
		this.self_introduction = self_introduction;
		this.gender = gender;
		this.school_division = school_division;
		this.school_name = school_name;
		this.craduation_status = craduation_status;
		this.hope_salary = hope_salary;
		this.picture = picture;
		this.file_name = file_name;
		this.major = major;
		this.career = career;
		this.award = award;
		this.url = url;
		this.hope_area2 = hope_area2;
		this.on_off = on_off;
	}

	public int getResume_num() {
		return resume_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public String getUser_email() {
		return user_email;
	}

	public String getDate_birth() {
		return date_birth;
	}

	public String getHope_area() {
		return hope_area;
	}

	public String getResume_title() {
		return resume_title;
	}

	public String getAddess() {
		return addess;
	}

	public String getSelf_introduction() {
		return self_introduction;
	}

	public String getGender() {
		return gender;
	}

	public String getSchool_division() {
		return school_division;
	}

	public String getSchool_name() {
		return school_name;
	}

	public String getCraduation_status() {
		return craduation_status;
	}

	public String getHope_salary() {
		return hope_salary;
	}

	public String getPicture() {
		return picture;
	}

	public String getFile_name() {
		return file_name;
	}

	public String getMajor() {
		return major;
	}

	public String getCareer() {
		return career;
	}

	public String getAward() {
		return award;
	}

	public String getUrl() {
		return url;
	}

	public String getHope_area2() {
		return hope_area2;
	}

	public String getOn_off() {
		return on_off;
	}
	
	
}
