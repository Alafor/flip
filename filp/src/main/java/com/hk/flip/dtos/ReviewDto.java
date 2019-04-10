package com.hk.flip.dtos;

import java.util.Date;

public class ReviewDto {

	private int review_seq;
	private String review_student;
	private int class_seq;
	private float review_rating;
	private String review_detail;
	private String review_delflag;
	private Date review_regdate;
	private String review_instructor;
	
	public ReviewDto() {
		// TODO Auto-generated constructor stub
	}

	public int getReview_seq() {
		return review_seq;
	}

	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}

	public String getReview_student() {
		return review_student;
	}

	public void setReview_student(String review_student) {
		this.review_student = review_student;
	}

	public int getClass_seq() {
		return class_seq;
	}

	public void setClass_seq(int class_seq) {
		this.class_seq = class_seq;
	}

	public float getReview_rating() {
		return review_rating;
	}

	public void setReview_rating(float review_rating) {
		this.review_rating = review_rating;
	}

	public String getReview_detail() {
		return review_detail;
	}

	public void setReview_detail(String review_detail) {
		this.review_detail = review_detail;
	}

	public String getReview_delflag() {
		return review_delflag;
	}

	public void setReview_delflag(String review_delflag) {
		this.review_delflag = review_delflag;
	}

	public Date getReview_regdate() {
		return review_regdate;
	}

	public void setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
	}

	public String getReview_instructor() {
		return review_instructor;
	}

	public void setReview_instructor(String review_instructor) {
		this.review_instructor = review_instructor;
	}

	public ReviewDto(int review_seq, String review_student, int class_seq, float review_rating, String review_detail,
			String review_delflag, Date review_regdate, String review_instructor) {
		this.review_seq = review_seq;
		this.review_student = review_student;
		this.class_seq = class_seq;
		this.review_rating = review_rating;
		this.review_detail = review_detail;
		this.review_delflag = review_delflag;
		this.review_regdate = review_regdate;
		this.review_instructor = review_instructor;
	}

	@Override
	public String toString() {
		return "ReviewDto [review_seq=" + review_seq + ", review_student=" + review_student + ", class_seq=" + class_seq
				+ ", review_rating=" + review_rating + ", review_detail=" + review_detail + ", review_delflag="
				+ review_delflag + ", review_regdate=" + review_regdate + ", review_instructor=" + review_instructor
				+ "]";
	}

}
