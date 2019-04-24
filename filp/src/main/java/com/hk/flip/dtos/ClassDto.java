package com.hk.flip.dtos;

import java.util.Date;

public class ClassDto {

	private String class_type;
	private int seq;
	private String class_name;
	private Date regdate;
	private String class_info;
	private String class_area;
	private String class_depa;
	private String class_sd;
	private String class_cd;
	private String class_week;
	private String class_starttime;
	private int class_time;
	private int class_price;  
	private String class_detail;
	private String class_img;
	private String class_hashtag;
	private String class_termin;
	private int class_member_seq;
	private int class_participation;
	private int class_now_participation;
	private int class_d_day;
	//별점 평균
	private float class_member_rating;
	//강사, 수강생 프로필 이미지
	private String profile_img;
	//강사, 수강생 이름
	private String class_creator_name;
	// 강의 리뷰 개수
	private int class_review_count;
	public ClassDto() {
		// TODO Auto-generated constructor stub
	}
	public String getClass_type() {
		return class_type;
	}
	public void setClass_type(String class_type) {
		this.class_type = class_type;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getClass_info() {
		return class_info;
	}
	public void setClass_info(String class_info) {
		this.class_info = class_info;
	}
	public String getClass_area() {
		return class_area;
	}
	public void setClass_area(String class_area) {
		this.class_area = class_area;
	}
	public String getClass_depa() {
		return class_depa;
	}
	public void setClass_depa(String class_depa) {
		this.class_depa = class_depa;
	}
	public String getClass_sd() {
		return class_sd;
	}
	public void setClass_sd(String class_sd) {
		this.class_sd = class_sd;
	}
	public String getClass_cd() {
		return class_cd;
	}
	public void setClass_cd(String class_cd) {
		this.class_cd = class_cd;
	}
	public String getClass_week() {
		return class_week;
	}
	public void setClass_week(String class_week) {
		this.class_week = class_week;
	}
	public String getClass_starttime() {
		return class_starttime;
	}
	public void setClass_starttime(String class_starttime) {
		this.class_starttime = class_starttime;
	}
	public int getClass_time() {
		return class_time;
	}
	public void setClass_time(int class_time) {
		this.class_time = class_time;
	}
	public int getClass_price() {
		return class_price;
	}
	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}
	public String getClass_detail() {
		return class_detail;
	}
	public void setClass_detail(String class_detail) {
		this.class_detail = class_detail;
	}
	public String getClass_img() {
		return class_img;
	}
	public void setClass_img(String class_img) {
		this.class_img = class_img;
	}
	public String getClass_hashtag() {
		return class_hashtag;
	}
	public void setClass_hashtag(String class_hashtag) {
		this.class_hashtag = class_hashtag;
	}
	public String getClass_termin() {
		return class_termin;
	}
	public void setClass_termin(String class_termin) {
		this.class_termin = class_termin;
	}
	public int getClass_member_seq() {
		return class_member_seq;
	}
	public void setClass_member_seq(int class_member_seq) {
		this.class_member_seq = class_member_seq;
	}
	public int getClass_participation() {
		return class_participation;
	}
	public void setClass_participation(int class_participation) {
		this.class_participation = class_participation;
	}
	public int getClass_now_participation() {
		return class_now_participation;
	}
	public void setClass_now_participation(int class_now_participation) {
		this.class_now_participation = class_now_participation;
	}
	public int getClass_d_day() {
		return class_d_day;
	}
	public void setClass_d_day(int class_d_day) {
		this.class_d_day = class_d_day;
	}
	public float getClass_member_rating() {
		return class_member_rating;
	}
	public void setClass_member_rating(float class_member_rating) {
		this.class_member_rating = class_member_rating;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getClass_creator_name() {
		return class_creator_name;
	}
	public void setClass_creator_name(String class_creator_name) {
		this.class_creator_name = class_creator_name;
	}
	public int getClass_review_count() {
		return class_review_count;
	}
	public void setClass_review_count(int class_review_count) {
		this.class_review_count = class_review_count;
	}
	@Override
	public String toString() {
		return "ClassDto [class_type=" + class_type + ", seq=" + seq + ", class_name=" + class_name + ", regdate="
				+ regdate + ", class_info=" + class_info + ", class_area=" + class_area + ", class_depa=" + class_depa
				+ ", class_sd=" + class_sd + ", class_cd=" + class_cd + ", class_week=" + class_week
				+ ", class_starttime=" + class_starttime + ", class_time=" + class_time + ", class_price=" + class_price
				+ ", class_detail=" + class_detail + ", class_img=" + class_img + ", class_hashtag=" + class_hashtag
				+ ", class_termin=" + class_termin + ", class_member_seq=" + class_member_seq + ", class_participation="
				+ class_participation + ", class_now_participation=" + class_now_participation + ", class_d_day="
				+ class_d_day + ", class_member_rating=" + class_member_rating + ", profile_img=" + profile_img
				+ ", class_creator_name=" + class_creator_name + ", class_review_count=" + class_review_count + "]";
	}
	public ClassDto(String class_type, int seq, String class_name, Date regdate, String class_info, String class_area,
			String class_depa, String class_sd, String class_cd, String class_week, String class_starttime, int class_time,
			int class_price, String class_detail, String class_img, String class_hashtag, String class_termin,
			int class_member_seq, int class_participation, int class_now_participation, int class_d_day,
			float class_member_rating, String profile_img, String class_creator_name, int class_review_count) {
		super();
		this.class_type = class_type;
		this.seq = seq;
		this.class_name = class_name;
		this.regdate = regdate;
		this.class_info = class_info;
		this.class_area = class_area;
		this.class_depa = class_depa;
		this.class_sd = class_sd;
		this.class_cd = class_cd;
		this.class_week = class_week;
		this.class_starttime = class_starttime;
		this.class_time = class_time;
		this.class_price = class_price;
		this.class_detail = class_detail;
		this.class_img = class_img;
		this.class_hashtag = class_hashtag;
		this.class_termin = class_termin;
		this.class_member_seq = class_member_seq;
		this.class_participation = class_participation;
		this.class_now_participation = class_now_participation;
		this.class_d_day = class_d_day;
		this.class_member_rating = class_member_rating;
		this.profile_img = profile_img;
		this.class_creator_name = class_creator_name;
		this.class_review_count = class_review_count;
	}


	}
