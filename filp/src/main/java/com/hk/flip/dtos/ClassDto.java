package com.hk.flip.dtos;

import java.util.Date;

public class ClassDto {

	private String type;
	private int seq;
	private String name;
	private Date regdate;
	private String info;
	private String area;
	private String depa;
	private Date sd;
	private Date cd;
	private String week;
	private String starttime;
	private int time;
	private int price;
	private int nop;
	private String detail;
	private String img;
	private String hashtag;
	private String termin;
	private String instructor;
	private int participation;
	private int d_day;
	private float rating;
	
	
	public ClassDto() {
		// TODO Auto-generated constructor stub
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public int getSeq() {
		return seq;
	}


	public void setSeq(int seq) {
		this.seq = seq;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public String getInfo() {
		return info;
	}


	public void setInfo(String info) {
		this.info = info;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getDepa() {
		return depa;
	}


	public void setDepa(String depa) {
		this.depa = depa;
	}


	public Date getSd() {
		return sd;
	}


	public void setSd(Date sd) {
		this.sd = sd;
	}


	public Date getCd() {
		return cd;
	}


	public void setCd(Date cd) {
		this.cd = cd;
	}


	public String getWeek() {
		return week;
	}


	public void setWeek(String week) {
		this.week = week;
	}


	public String getStarttime() {
		return starttime;
	}


	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}


	public int getTime() {
		return time;
	}


	public void setTime(int time) {
		this.time = time;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getNop() {
		return nop;
	}


	public void setNop(int nop) {
		this.nop = nop;
	}


	public String getDetail() {
		return detail;
	}


	public void setDetail(String detail) {
		this.detail = detail;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getHashtag() {
		return hashtag;
	}


	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}


	public String getTermin() {
		return termin;
	}


	public void setTermin(String termin) {
		this.termin = termin;
	}


	public String getInstructor() {
		return instructor;
	}


	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}


	public int getParticipation() {
		return participation;
	}


	public void setParticipation(int participation) {
		this.participation = participation;
	}


	public int getD_day() {
		return d_day;
	}


	public void setD_day(int d_day) {
		this.d_day = d_day;
	}


	public float getRating() {
		return rating;
	}


	public void setRating(float rating) {
		this.rating = rating;
	}


	public ClassDto(String type, int seq, String name, Date regdate, String info, String area, String depa, Date sd,
			Date cd, String week, String starttime, int time, int price, int nop, String detail, String img,
			String hashtag, String termin, String instructor, int participation, int d_day, float rating) {
		this.type = type;
		this.seq = seq;
		this.name = name;
		this.regdate = regdate;
		this.info = info;
		this.area = area;
		this.depa = depa;
		this.sd = sd;
		this.cd = cd;
		this.week = week;
		this.starttime = starttime;
		this.time = time;
		this.price = price;
		this.nop = nop;
		this.detail = detail;
		this.img = img;
		this.hashtag = hashtag;
		this.termin = termin;
		this.instructor = instructor;
		this.participation = participation;
		this.d_day = d_day;
		this.rating = rating;
	}


	@Override
	public String toString() {
		return "ClassDto [type=" + type + ", seq=" + seq + ", name=" + name + ", regdate=" + regdate + ", info=" + info
				+ ", area=" + area + ", depa=" + depa + ", sd=" + sd + ", cd=" + cd + ", week=" + week + ", starttime="
				+ starttime + ", time=" + time + ", price=" + price + ", nop=" + nop + ", detail=" + detail + ", img="
				+ img + ", hashtag=" + hashtag + ", termin=" + termin + ", instructor=" + instructor
				+ ", participation=" + participation + ", d_day=" + d_day + ", rating=" + rating + "]";
	}

}
