package com.tripon.project.dto;

import org.springframework.stereotype.Component;

@Component
public class MemberDTO {
	String id, name;
	int password;
	String nickname, phone, email;

	MemberDTO(String id, int pw){
		System.out.println("매개변수 있는 생성자 호출");
		this.id = id;
		this.password = password;
	}
	MemberDTO(){
		System.out.println("MemberDTO 기본 생성자 호출");
	}
	
	public MemberDTO(String id, String name, int password, String phone, String email) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String toString() {
		return id+":"+password+":"+name+":"+phone+":"+email;
	}
}
