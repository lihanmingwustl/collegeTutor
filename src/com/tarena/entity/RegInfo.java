package com.tarena.entity;

public class RegInfo {
/**
 * 产品属性
 */
	private int id;
	private String nick_name;		// nick_name --昵称（用户名）
	private String password;				// password --密码
	private long add_time;					// add_time --添加产品的时间
	private double salary;			// salary -- 时薪
	private double dis_salary;			// dis_salary , --折扣后时薪
	private String course;				// course -- 授课科目
	private int has_deleted;					// has_deleted int(1) NOT NULL default '0', --是否删除
	private String reg_pic;				// reg_pic --注册头像
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getAdd_time() {
		return add_time;
	}
	public void setAdd_time(long add_time) {
		this.add_time = add_time;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public double getDis_salary() {
		return dis_salary;
	}
	public void setDis_salary(double dis_salary) {
		this.dis_salary = dis_salary;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getHas_deleted() {
		return has_deleted;
	}
	public void setHas_deleted(int has_deleted) {
		this.has_deleted = has_deleted;
	}
	public String getReg_pic() {
		return reg_pic;
	}
	public void setReg_pic(String reg_pic) {
		this.reg_pic = reg_pic;
	}
	
	
	
}
