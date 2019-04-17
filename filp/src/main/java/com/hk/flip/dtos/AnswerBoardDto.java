package com.hk.flip.dtos;

import java.io.Serializable;
import java.util.Date;

public class AnswerBoardDto implements Serializable{
	
	private static final long serialVersionUID = 1L;

	private int board_seq;
	private int board_member_seq;
	private String board_member_name;
	private Date board_regdate;
	private String board_title;
	private String board_content;
	private String board_delflag;
	private String board_secret;
	private int board_refer;  
	private int board_step;
	private int board_depth;
	
	public AnswerBoardDto() {
		// TODO Auto-generated constructor stub
	}
	public String getBorad_member_name() {
		return board_member_name;
	}
	
	public void setBorad_member_name(String borad_member_name) {
		this.board_member_name = borad_member_name;
	}

	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public int getBoard_member_seq() {
		return board_member_seq;
	}

	public void setBoard_member_seq(int board_member_seq) {
		this.board_member_seq = board_member_seq;
	}

	public Date getBoard_regdate() {
		return board_regdate;
	}

	public void setBoard_regdate(Date board_regdate) {
		this.board_regdate = board_regdate;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_delflag() {
		return board_delflag;
	}

	public void setBoard_delflag(String board_delflag) {
		this.board_delflag = board_delflag;
	}

	public String getBoard_secret() {
		return board_secret;
	}

	public void setBoard_secret(String board_secret) {
		this.board_secret = board_secret;
	}

	public int getBoard_refer() {
		return board_refer;
	}

	public void setBoard_refer(int board_refer) {
		this.board_refer = board_refer;
	}

	public int getBoard_step() {
		return board_step;
	}

	public void setBoard_step(int board_step) {
		this.board_step = board_step;
	}

	public int getBoard_depth() {
		return board_depth;
	}

	public void setBoard_depth(int board_depth) {
		this.board_depth = board_depth;
	}

	public AnswerBoardDto(int board_seq, int board_member_seq,String board_mamber_name, Date board_regdate, String board_title,
			String board_content, String board_delflag, String board_secret, int board_refer, int board_step,
			int board_depth) {
		super();
		this.board_seq = board_seq;
		this.board_member_seq = board_member_seq;
		this.board_member_name = board_member_name;
		this.board_regdate = board_regdate;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_delflag = board_delflag;
		this.board_secret = board_secret;
		this.board_refer = board_refer;
		this.board_step = board_step;
		this.board_depth = board_depth;
	}

	@Override
	public String toString() {
		return "AnswerBoardDto [board_seq=" + board_seq + ", board_member_seq=" + board_member_seq + ", board_regdate="
				+ board_regdate + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_delflag=" + board_delflag + ", board_secret=" + board_secret + ", board_refer=" + board_refer
				+ ", board_step=" + board_step + ", board_depth=" + board_depth + "]";
	}
	
	
}
