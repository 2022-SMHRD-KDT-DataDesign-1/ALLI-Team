package com.smhrd.model;

public class OsVO {
	private int resume_num;
	private String os_name;
	private String os_level;
	
	public OsVO() {
		
	}
	
	public OsVO(int resume_num, String os_name, String os_level) {
		super();
		this.resume_num = resume_num;
		os_name = os_name;
		os_level = os_level;
	}
	
	public int getResume_num() {
		return resume_num;
	}

	public String getOs_name() {
		return os_name;
	}

	public String getOs_level() {
		return os_level;
	}

	
	
}
