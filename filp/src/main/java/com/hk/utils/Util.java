package com.hk.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Util {
	
	private String arrowNbsp;//depth크기만큼 공백 만드는거 저장


	//게시글의 depth의크기만큼 공백을 만드는 기능
	public void setArrowNbsp(String depth) {
		String nbsp="";
		int depthInt=Integer.parseInt(depth);//int형으로 형변환
		for (int i = 0; i < depthInt; i++) {
			nbsp+="&nbsp;&nbsp;&nbsp;&nbsp;";
		}
		//조건?true:false--->3항연산자
		this.arrowNbsp=(depthInt>0?nbsp+"<img src='resources/images/arrow1.png' alt='답글'/>":"");
	}
	
	public String getArrowNbsp() {
		return arrowNbsp;
	}
	//문자열 date형식으로 변환
//	public static Date setToDates(String mDate) throws ParseException {//mDate-->화면으로부터 12자리 문자열을 받게될 파라미터
//		//date형식: yyyy-MM-dd hh:mm:ss---> 날짜형식으로 변환하려면 date형식으로 모양을 바꿔줘야한다.
//		//문자열을 ---> date타입으로 변환해야된다.
//		int year = Integer.parseInt(mDate.substring(0, 4));
//		int month = Integer.parseInt(mDate.substring(5, 7));
//		int day = Integer.parseInt(mDate.substring(8, 10));
//		Calendar cal1=Calendar.getInstance();
//		Calendar cal2=Calendar.getInstance();
//		cal1.ge
//		cal.set(year,month,day);
//		
//		return changeDate;
//	} 
}
