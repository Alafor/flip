package com.hk.flip.dtos;

import java.util.Date;

public class AnswerBoardDto {

	private int seq;
	private String id;
	private Date regdate;
	private String title;
	private String content;
	private String delflag;
	private String secret;
	private int refer;
	private int step;
	private int depth;
	
	public AnswerBoardDto() {
		// TODO Auto-generated constructor stub
	}

	public AnswerBoardDto(int seq, String id, Date regdate, String title, String content, String delflag, String secret,
			int refer, int step, int depth) {
		super();
		this.seq = seq;
		this.id = id;
		this.regdate = regdate;
		this.title = title;
		this.content = content;
		this.delflag = delflag;
		this.secret = secret;
		this.refer = refer;
		this.step = step;
		this.depth = depth;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public int getRefer() {
		return refer;
	}

	public void setRefer(int refer) {
		this.refer = refer;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	@Override
	public String toString() {
		return "AnswerBoardDto [seq=" + seq + ", id=" + id + ", regdate=" + regdate + ", title=" + title + ", content="
				+ content + ", delflag=" + delflag + ", secret=" + secret + ", refer=" + refer + ", step=" + step
				+ ", depth=" + depth + "]";
	}

	
	
}
