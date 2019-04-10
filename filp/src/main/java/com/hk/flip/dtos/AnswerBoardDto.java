package com.hk.flip.dtos;

import java.util.Date;

public class AnswerBoardDto {

	private int board_seq;
	private String board_id;
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

	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
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

	public AnswerBoardDto(int board_seq, String board_id, Date board_regdate, String board_title, String board_content,
			String board_delflag, String board_secret, int board_refer, int board_step, int board_depth) {
		this.board_seq = board_seq;
		this.board_id = board_id;
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
		return "AnswerBoardDto [board_seq=" + board_seq + ", board_id=" + board_id + ", board_regdate=" + board_regdate
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_delflag="
				+ board_delflag + ", board_secret=" + board_secret + ", board_refer=" + board_refer + ", board_step="
				+ board_step + ", board_depth=" + board_depth + "]";
	}

	
	
}
