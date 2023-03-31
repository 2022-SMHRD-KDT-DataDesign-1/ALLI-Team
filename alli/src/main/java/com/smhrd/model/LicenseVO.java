package com.smhrd.model;

public class LicenseVO {
	private int resume_num;
	private String License_name;
	
	public LicenseVO() {
		
	}
	
	public LicenseVO(int resume_num, String license_name) {
		super();
		this.resume_num = resume_num;
		License_name = license_name;
	}

	public int getResume_num() {
		return resume_num;
	}

	public String getLicense_name() {
		return License_name;
	}
	
}

