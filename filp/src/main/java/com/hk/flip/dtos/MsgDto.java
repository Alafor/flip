package com.hk.flip.dtos;

import java.util.Date;

public class MsgDto {
	
	private String msg_to;
	private String msg_from;
	private String msg_content;
	private String msg_read;
	private Date msg_regate;
	
	
	public MsgDto(String msg_to, String msg_from, String msg_content, String msg_read, Date msg_regate) {
		super();
		this.msg_to = msg_to;
		this.msg_from = msg_from;
		this.msg_content = msg_content;
		this.msg_read = msg_read;
		this.msg_regate = msg_regate;
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


	public Date getMsg_regate() {
		return msg_regate;
	}


	public void setMsg_regate(Date msg_regate) {
		this.msg_regate = msg_regate;
	}


	@Override
	public String toString() {
		return "MsgDto [msg_to=" + msg_to + ", msg_from=" + msg_from + ", msg_content=" + msg_content + ", msg_read="
				+ msg_read + ", msg_regate=" + msg_regate + "]";
	}
	
	
}
