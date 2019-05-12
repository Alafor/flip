package com.hk.flip.dtos;

import java.util.Date;

public class MsgDto {
	
	private String msg_to;
	private String msg_from;
	private String msg_content;
	private String msg_read;
	private Date msg_regdate;
	private int msg_seq;
	private String member_name;
	private String msg_delflag;
	public MsgDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public String getMsg_delflag() {
		return msg_delflag;
	}
	public void setMsg_delflag(String msg_delflag) {
		this.msg_delflag = msg_delflag;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMsg_to() {
		return msg_to;
	}
	public void setMsg_to(String msg_to) {
		this.msg_to = msg_to;
	}
	public String getMsg_from() {
		return msg_from;
	}
	public void setMsg_from(String msg_from) {
		this.msg_from = msg_from;
	}
	public String getMsg_content() {
		return msg_content;
	}
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	public String getMsg_read() {
		return msg_read;
	}
	public void setMsg_read(String msg_read) {
		this.msg_read = msg_read;
	}
	public Date getMsg_regdate() {
		return msg_regdate;
	}
	public void setMsg_regdate(Date msg_regdate) {
		this.msg_regdate = msg_regdate;
	}
	public int getMsg_seq() {
		return msg_seq;
	}
	public void setMsg_seq(int msg_seq) {
		this.msg_seq = msg_seq;
	}
	
	public MsgDto(String msg_to, String msg_from, String msg_content, String msg_read, Date msg_regdate, int msg_seq,String member_name,String msg_delflag) {
		super();
		this.msg_to = msg_to;
		this.msg_from = msg_from;
		this.msg_content = msg_content;
		this.msg_read = msg_read;
		this.msg_regdate = msg_regdate;
		this.msg_seq = msg_seq;
		this.member_name = member_name;
		this.msg_delflag =msg_delflag;
	}


	@Override
	public String toString() {
		return "MsgDto [msg_to=" + msg_to + ", msg_from=" + msg_from + ", msg_content=" + msg_content + ", msg_read="
				+ msg_read + ", msg_regdate=" + msg_regdate + ", msg_seq=" + msg_seq + ", member_name=" + member_name
				+ ", msg_delflag=" + msg_delflag + "]";
	}


	
}