package com.hk.utils;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

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
//		cal1.
//		cal2.set(year,month,day);
//		
//		return changeDate;
//	} 
	
	public static Map<String, Object> getCalendar(String pyear, String pmonth){
		Map<String, Object> calendar= new HashMap<String, Object>();
		//달력의 날짜를 바꾸기 위해서 전달된 year와 month 값을 받는다.
		String pYear=pyear;
		String pMonth=pmonth;

		Calendar cal=Calendar.getInstance();//calendar객체는 new를 사용하지 않는다
		int year=cal.get(Calendar.YEAR);//현재 년도를 구함
		int month=cal.get(Calendar.MONTH)+1;//현재 월을 구함(0월~11월)
		
		if(pYear!=null){
			year=Integer.parseInt(pYear);
		}
		if(pMonth!=null){
			month=Integer.parseInt(pMonth);
		}
		
		//달중에 12월을 넘어갔을경우 month는 1월로, 년도는 다음년도로 값을 바꿔준다
		if(month>12){
			month=1;
			year++;
		}
		//달중에 1월을 뒤로 넘어갔을경우 month는 12월로, 년도는 전년도로 값을 바꿔준다
		if(month<1){
			month=12;
			year--;
		}
		
		//현재 월의 1일에 대한 요일 구하기--> 현재날짜에 대한 정보를 담고 있는 Calendar객체생성
		//                     --> 3월1일로 셋팅을 해서 요일을 구함
		cal.set(year, month-1, 1);//2019년3월1일로 바꿔준다
		int dayOfWeek=cal.get(Calendar.DAY_OF_WEEK);//1일에 대한 요일구함:1(일)~7(토)
		
		//월의 마지막날 구하기
		int lastDay=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		calendar.put("cal", cal);
		calendar.put("dayOfWeek", dayOfWeek);
		calendar.put("lastDay", lastDay);
		calendar.put("year", year);
		calendar.put("month", month);
		return calendar;
	}
}
