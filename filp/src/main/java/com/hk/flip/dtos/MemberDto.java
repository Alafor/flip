package com.hk.flip.dtos;

import java.util.Date;

public class MemberDto {

	private String member_type;
	private String member_id;
	private String member_password;
	private String member_name;
	private String member_birth;
	private String member_phone;
	private String member_email;
	private String member_profile;
	private String member_info;
	private Date member_regdate;
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	public String getMember_type() {
		return member_type;
	}

	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_password() {
		return member_password;
	}

	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_birth() {
		return member_birth;
	}

	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_profile() {
		return member_profile;
	}

	public void setMember_profile(String member_profile) {
		this.member_profile = member_profile;
	}

	public String getMember_info() {
		return member_info;
	}

	public void setMember_info(String member_info) {
		this.member_info = member_info;
	}

	public Date getMember_regdate() {
		return member_regdate;
	}

	public void setMember_regdate(Date member_regdate) {
		this.member_regdate = member_regdate;
	}

	public MemberDto(String member_type, String member_id, String member_password, String member_name,
			String member_birth, String member_phone, String member_email, String member_profile, String member_info,
			Date member_regdate) {
		this.member_type = member_type;
		this.member_id = member_id;
		this.member_password = member_password;
		this.member_name = member_name;
		this.member_birth = member_birth;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_profile = member_profile;
		this.member_info = member_info;
		this.member_regdate = member_regdate;
	} 
	
	public MemberDto(String member_type, String member_id, String member_password) {
		this.member_type = member_type;
		this.member_id = member_id;
		this.member_password = member_password;
	}

	@Override
	public String toString() {
		return "MemberDto [member_type=" + member_type + ", member_id=" + member_id + ", member_password="
				+ member_password + ", member_name=" + member_name + ", member_birth=" + member_birth
				+ ", member_phone=" + member_phone + ", member_email=" + member_email + ", member_profile="
				+ member_profile + ", member_info=" + member_info + ", member_regdate=" + member_regdate + "]";
	}

	

}
