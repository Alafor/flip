package com.hk.flip.dtos;

import java.util.Date;

public class ReviewDto {

	private int review_seq;
	private int review_member_seq;
	private int review_class_seq; 
	private float review_rating;
	private String review_detail;
	private String review_delflag;
	private Date review_regdate;
	private int review_instructor_seq;
	
	//member
	private String member_name;
	private String profile_img;
	public int getClass_seq() {
		return review_class_seq;
	}

	public void setClass_seq(int class_seq) {
		this.review_class_seq = class_seq;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	private String comment; //review.jsp에서 comment
	
	public ReviewDto() {
		// TODO Auto-generated constructor stub
	}	

	public int getReview_seq() {
		return review_seq;
	}

	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}

	public int getReview_member_seq() {
		return review_member_seq;
	}

	public void setReview_member_seq(int review_member_seq) {
		this.review_member_seq = review_member_seq;
	}

	

	public int getReview_class_seq() {
		return review_class_seq;
	}

	public void setReview_class_seq(int review_class_seq) {
		this.review_class_seq = review_class_seq;
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

	public int getReview_instructor_seq() {
		return review_instructor_seq;
	}

	public void setReview_instructor_seq(int review_instructor_seq) {
		this.review_instructor_seq = review_instructor_seq;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public static ReviewDto cReview(int seq) {
		return null;
	}

	public ReviewDto(int review_seq, int review_member_seq, int review_class_seq, float review_rating,
			String review_detail, String review_delflag, Date review_regdate, int review_instructor_seq,
			String member_name, String profile_img, String comment) {
		this.review_seq = review_seq;
		this.review_member_seq = review_member_seq;
		this.review_class_seq = review_class_seq;
		this.review_rating = review_rating;
		this.review_detail = review_detail;
		this.review_delflag = review_delflag;
		this.review_regdate = review_regdate;
		this.review_instructor_seq = review_instructor_seq;
		this.member_name = member_name;
		this.profile_img = profile_img;
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "ReviewDto [review_seq=" + review_seq + ", review_member_seq=" + review_member_seq
				+ ", review_class_seq=" + review_class_seq + ", review_rating=" + review_rating + ", review_detail="
				+ review_detail + ", review_delflag=" + review_delflag + ", review_regdate=" + review_regdate
				+ ", review_instructor_seq=" + review_instructor_seq + ", member_name=" + member_name + ", profile_img="
				+ profile_img + ", comment=" + comment + "]";
	}


}
