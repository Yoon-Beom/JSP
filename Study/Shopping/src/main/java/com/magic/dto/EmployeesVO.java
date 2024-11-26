package com.magic.dto;

import java.util.Date;

public class EmployeesVO {
	private String id, pass, name, lev, phone;
	private int gender;
	private Date enter;
	
	public EmployeesVO() { }
	public EmployeesVO(String id, String pass, String name, String lev, String phone, int gender, Date enter) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.lev = lev;
		this.phone = phone;
		this.gender = gender;
		this.enter = enter;
	}

	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	
	public String getPass() { return pass; }
	public void setPass(String pass) { this.pass = pass; }
	
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getLev() { return lev; }
	public void setLev(String lev) { this.lev = lev; }
	
	public String getPhone() { return phone; }
	public void setPhone(String phone) { this.phone = phone; }
	
	public int getGender() { return gender; }
	public void setGender(int gender) { this.gender = gender; }
	
	public Date getEnter() { return enter; }
	public void setEnter(Date enter) { this.enter = enter; }
	
	@Override
	public String toString() {
		return "EmployeesVO [id=" + id + ", pass=" + pass + ", name=" + name + ", lev=" + lev + ", phone=" + phone
				+ ", gender=" + gender + ", enter=" + enter + "]";
	}
}
