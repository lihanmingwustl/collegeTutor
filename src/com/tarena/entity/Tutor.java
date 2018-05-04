package com.tarena.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tutor extends RegInfo {

	private String real_name;
	private String gender;
	private String age;
	private String school;
	private String major;
	private long reg_time;
	private String telephone;
	private String p_summary;



	public String getReg_dt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(new Date(reg_time));
	}

	
	
	public long getReg_time() {
		return reg_time;
	}

	public String getReal_name() {
		return real_name;
	}


	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getSchool() {
		return school;
	}


	public void setSchool(String school) {
		this.school = school;
	}


	public String getMajor() {
		return major;
	}


	public void setMajor(String major) {
		this.major = major;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public String getP_summary() {
		return p_summary;
	}


	public void setP_summary(String p_summary) {
		this.p_summary = p_summary;
	}


	public void setReg_time(long reg_time) {
		this.reg_time = reg_time;
	}

	

}
