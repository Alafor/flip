package com.hk.flip.dtos;

import java.util.Date;

public class MemberDto {

	private String type;
	private String id;
	private String password;
	private String name;
	private Date birth;
	private String phone;
	private String email;
	private String profile;
	private String info;
	private Date regdate;
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
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

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public MemberDto(String type, String id, String password, String name, Date birth, String phone, String email,
			String profile, String info, Date regdate) {
		super();
		this.type = type;
		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.profile = profile;
		this.info = info;
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MemberDto [type=" + type + ", id=" + id + ", password=" + password + ", name=" + name + ", birth="
				+ birth + ", phone=" + phone + ", email=" + email + ", profile=" + profile + ", info=" + info
				+ ", regdate=" + regdate + "]";
	}

}
