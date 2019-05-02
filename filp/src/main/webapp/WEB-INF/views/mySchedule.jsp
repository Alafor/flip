<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<%@page import="java.util.Calendar"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="resources/css/mySchedule.css" />
<title>Flip - My Schedule</title>
</head>
<%
	//달력의 날짜를 바꾸기 위해서 전달된 year와 month 값을 받는다.
	String pYear=request.getParameter("year");
	String pMonth=request.getParameter("month");

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
%>
<body>
<div class="calendar-title">내 일정보기</div>
	 <div class="calendar-wrap"	>
	 	<div class="calendar-caption">
	 		<div>
	 			<a href="calendar.jsp?year=<%=year-1%>&month=<%=month%>">◁</a>
				<a href="calendar.jsp?year=<%=year%>&month=<%=month-1%>">◀</a>
				<span class="y">
					<%=year%>
				</span>년
				<span class="m">
					<%=month%>
				</span>월
		<a href="calendar.jsp?year=<%=year%>&month=<%=month+1%>">▶</a>
		<a href="calendar.jsp?year=<%=year+1%>&month=<%=month%>">▷</a>
	 		</div>
	 	</div>
	 	<div class="calendar-thead">
	 	<div class="calendar-tr">
	 		<div class="calendar-td weeks">일</div>
	 		<div class="calendar-td weeks">월</div>
	 		<div class="calendar-td weeks">화</div>
	 		<div class="calendar-td weeks">수</div>
	 		<div class="calendar-td weeks">목</div>
	 		<div class="calendar-td weeks">금</div>
	 		<div class="calendar-td weeks">토</div>
	 	</div>
	 	<div class="calendar-tr">
	 	<%  //공백수 출력하기
		for(int i=0;i<(dayOfWeek-1);i++){
			out.print("<div class='calendar-td'>&nbsp;</div>");
		}
		//일수출력하기
		for(int i=1;i<=lastDay;i++){
			%>
			<div class="calendar-td">
				<a class="countview"  href="CalController.do?command=callist&year=<%=year%>&month=<%=month%>&date=<%=i%>"><%=i%></a>
				<a href="CalController.do?command=insertform&year=<%=year%>&month=<%=month%>&date=<%=i%>&lastday=<%=lastDay%>">				
				</a>
				<%-- <%=Util.getCalView(list, i)%> --%>
			</div>
			<%
			//dayOfWeek-1은 공백수:   (공백수+날짜)%7==0 토요일
			if((dayOfWeek-1+i)%7==0){
				out.print("</div><div class='calendar-tr'>");// <tr><td>1</td><td>1</td></tr><tr>
			}
		}
		//달력의 나머지 공백수 출력하기(공백TD)
		//7-((dayOfWeek-1+lastDay)%7)
		for(int i=0;i<(7-((dayOfWeek-1+lastDay)%7))%7;i++){
			out.print("<div class='calendar-td'>&nbsp;</div>");
		}
	%>
	 	</div>
	 </div>
	 </div>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function(){
	});
</script>
</html>
