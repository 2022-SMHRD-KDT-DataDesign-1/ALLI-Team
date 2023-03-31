package com.smhrd.model;

public class FrameworkVO {
	
	private int resume_num;
	private String framework_name;
	private String framework_level;
	
	public FrameworkVO() {
		
	}

	public FrameworkVO(int resume_num, String framework_name, String framework_level) {
		super();
		this.resume_num = resume_num;
		this.framework_name = framework_name;
		this.framework_level = framework_level;
	}

	public int getResume_num() {
		return resume_num;
	}

	public String getFramework_name() {
		return framework_name;
	}

	public String getFramework_level() {
		return framework_level;
	}
	
}
