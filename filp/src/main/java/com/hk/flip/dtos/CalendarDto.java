package com.hk.flip.dtos;



public class CalendarDto {
	private String class_name;
	private String days;
	private String scheduleweek;
	private String class_starttime;
	public CalendarDto() {
		super();
	}
	public CalendarDto(String class_name, String days, String scheduleweek, String class_starttime) {
		super();
		this.class_name = class_name;
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
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
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
		return "CalendarDto [class_name=" + class_name + ", days=" + days + ", scheduleweek=" + scheduleweek
				+ ", class_starttime=" + class_starttime + "]";
	}
	
}
