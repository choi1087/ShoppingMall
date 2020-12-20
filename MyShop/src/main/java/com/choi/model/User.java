package com.choi.model;

public class User {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String address;
	
	
	public User(String id, String pw, String name, String email, String phone, String address) {
		this.id=id;
		this.pw=pw;
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.address=address;
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", pw=" + pw + ", name=" + name + ", phone="  + phone + ", email=" + email + ", address="  + address
				+ "]";
	}
	
	
	
	
	
	
}