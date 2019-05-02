package com.hk.flip.dtos;



public class CalendarDto {
	private String class_name;
	private String years;
	private String months;
	private String days;
	private String scheduleweek;
	private String class_starttime;
	public CalendarDto() {
		super();
	}
	public CalendarDto(String class_name, String years, String months, String days, String scheduleweek,
			String class_starttime) {
		super();
		this.class_name = class_name;
		this.years = years;
		this.months = months;
		this.days = days;
		this.scheduleweek = scheduleweek;
		this.class_starttime = class_starttime;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getyears() {
		return years;
	}
	public void setyears(String years) {
		this.years = years;
	}
	public String getmonths() {
		return months;
	}
	public void setmonths(String months) {
		this.months = months;
	}
	public String getdays() {
		return days;
	}
	public void setdays(String days) {
		this.days = days;
	}
	public String getScheduleweek() {
		return scheduleweek;
	}
	public void setScheduleweek(String scheduleweek) {
		this.scheduleweek = scheduleweek;
	}
	public String getClass_starttime() {
		return class_starttime;
	}
	public void setClass_starttime(String class_starttime) {
		this.class_starttime = class_starttime;
	}
	@Override
	public String toString() {
		return "CalendarDto [class_name=" + class_name + ", years=" + years + ", months=" + months + ", days=" + days
				+ ", scheduleweek=" + scheduleweek + ", class_starttime=" + class_starttime + "]";
	}
	
	
}
