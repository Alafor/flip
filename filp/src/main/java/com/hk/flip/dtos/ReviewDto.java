package com.hk.flip.dtos;

import java.util.Date;

public class ReviewDto {

	private int seq;
	private String student;
	private int class_seq;
	private float rating;
	private String detail;
	private String delflag;
	private Date regdate;
	private String INSTRUCTOR;
	
	public ReviewDto() {
		// TODO Auto-generated constructor stub
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getStudent() {
		return student;
	}

	public void setStudent(String student) {
		this.student = student;
	}

	public int getClass_seq() {
		return class_seq;
	}

	public void setClass_seq(int class_seq) {
		this.class_seq = class_seq;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDelflag() {
		return delflag;
	}

	public void setDelflag(String delflag) {
		this.delflag = delflag;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getINSTRUCTOR() {
		return INSTRUCTOR;
	}

	public void setINSTRUCTOR(String iNSTRUCTOR) {
		INSTRUCTOR = iNSTRUCTOR;
	}

	public ReviewDto(int seq, String student, int class_seq, float rating, String detail, String delflag, Date regdate,
			String iNSTRUCTOR) {
		super();
		this.seq = seq;
		this.student = student;
		this.class_seq = class_seq;
		this.rating = rating;
		this.detail = detail;
		this.delflag = delflag;
		this.regdate = regdate;
		INSTRUCTOR = iNSTRUCTOR;
	}

	@Override
	public String toString() {
		return "ReviewDto [seq=" + seq + ", student=" + student + ", class_seq=" + class_seq + ", rating=" + rating
				+ ", detail=" + detail + ", delflag=" + delflag + ", regdate=" + regdate + ", INSTRUCTOR=" + INSTRUCTOR
				+ "]";
	}

}
