package com.smhrd.model;

public class OsVO {
	private int resume_num;
	private String OS_name;
	private String OS_level;
	
	public OsVO() {
		
	}
	
	public OsVO(int resume_num, String oS_name, String oS_level) {
		super();
		this.resume_num = resume_num;
		OS_name = oS_name;
		OS_level = oS_level;
	}
	
	public int getResume_num() {
		return resume_num;
	}

	public String getOS_name() {
		return OS_name;
	}

	public String getOS_level() {
		return OS_level;
	}

	
	
}
