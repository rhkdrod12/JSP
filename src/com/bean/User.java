package com.bean;

public class User {
	/*
	 * 자바빈은 form과 DB 통신과정에서 변수처리를 쉽게하기 위해 사용
	 * 관련변수를 동일한 이름으로 선언, getter, setter가 반드시 필요
	 * 
	 * JSP에서 bean클래스를 사용할 때 getter, setter를 이용해 접근하게 된다
	 * 
	 * bean클래스는 기본생성자, 모든 매개변수를 받는 생성자 두가지를 일반적으로 만든다.
	 */
	String id;
	String pw;
	String name;
	String email;
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(String id, String pw, String name, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
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
}
