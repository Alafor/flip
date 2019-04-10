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
	private Date class_sd;
	private Date class_cd;
	private String class_week;
	private String class_starttime;
	private int class_time;
	private int class_price;  
	private String class_detail;
	private String class_img;
	private String class_hashtag;
	private String class_termin;
	private String class_instructor;
	private int class_participation;
	private int class_now_participation;
	private int class_d_day;
	private float class_rating;
	
	
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


	public Date getClass_sd() {
		return class_sd;
	}


	public void setClass_sd(Date class_sd) {
		this.class_sd = class_sd;
	}


	public Date getClass_cd() {
		return class_cd;
	}


	public void setClass_cd(Date class_cd) {
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


	public String getClass_instructor() {
		return class_instructor;
	}


	public void setClass_instructor(String class_instructor) {
		this.class_instructor = class_instructor;
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


	public float getClass_rating() {
		return class_rating;
	}


	public void setClass_rating(float class_rating) {
		this.class_rating = class_rating;
	}


	public ClassDto(String class_type, int seq, String class_name, Date regdate, String class_info, String class_area,
			String class_depa, Date class_sd, Date class_cd, String class_week, String class_starttime, int class_time,
			int class_price, String class_detail, String class_img, String class_hashtag, String class_termin,
			String class_instructor, int class_participation, int class_now_participation, int class_d_day,
			float class_rating) {
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
		this.class_instructor = class_instructor;
		this.class_participation = class_participation;
		this.class_now_participation = class_now_participation;
		this.class_d_day = class_d_day;
		this.class_rating = class_rating;
	}


	@Override
	public String toString() {
		return "ClassDto [class_type=" + class_type + ", seq=" + seq + ", class_name=" + class_name + ", regdate="
				+ regdate + ", class_info=" + class_info + ", class_area=" + class_area + ", class_depa=" + class_depa
				+ ", class_sd=" + class_sd + ", class_cd=" + class_cd + ", class_week=" + class_week
				+ ", class_starttime=" + class_starttime + ", class_time=" + class_time + ", class_price=" + class_price
				+ ", class_detail=" + class_detail + ", class_img=" + class_img + ", class_hashtag=" + class_hashtag
				+ ", class_termin=" + class_termin + ", class_instructor=" + class_instructor + ", class_participation="
				+ class_participation + ", class_now_participation=" + class_now_participation + ", class_d_day="
				+ class_d_day + ", class_rating=" + class_rating + "]";
	}


	



}
