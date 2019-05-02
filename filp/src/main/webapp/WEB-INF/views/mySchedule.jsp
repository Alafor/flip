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
<body>
		<c:set var="year" value="${calendars.year}" />
	 	<c:set var="month" value="${calendars.month}" />
	 	<c:set var="dayOfWeek" value="${calendars.dayOfWeek}" />
	 	<c:set var="lastDay" value="${calendars.lastDay}" />
	 	
	 	
<div class="calendar-title">내 일정보기</div>
	 <div class="calendar-wrap"	>
	 	<div class="calendar-caption">
	 		<div>
	 			<a href="scheduleCalendar.do?year=${year-1}&month=${month}">◁</a>
				<a href="scheduleCalendar.do?year=${year}&month=${month-1}">◀</a>
				<span class="y">
					${year}
				</span>년
				<span class="m">
					${month}
				</span>월
		<a href="scheduleCalendar.do?year=${year}&month=${month+1}">▶</a>
		<a href="scheduleCalendar.do?year=${year+1}&month=${month}">▷</a>
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
	 	<c:forEach begin="1" end="${dayOfWeek-1}">
	 		<div class='calendar-td'>&nbsp;</div>
	 	</c:forEach>
	 	
	 	<c:forEach begin="1" end="${lastDay}" varStatus="seq">
	 		<div class="calendar-td">
				<a class="countview"  href="CalController.do?command=callist&year=${year}&month=${month}&date=${seq.count}">${seq.count}</a>
				<div class="mySchedules">
					<c:forEach items="${mySchedule}" var="mySchedule" varStatus="count">
						<c:if test="${mySchedule.years == year && mySchedule.months == month && mySchedule.days == seq.count}">
							${mySchedule.class_name}
						</c:if>
					</c:forEach>
				</div>
			</div>
			<c:if test="${(dayOfWeek-1+seq.index)%7==0}">
				</div><div class='calendar-tr'>
	 		</c:if>
	 	</c:forEach>
	 	<c:forEach begin="1" end="${(7-((dayOfWeek-1+lastDay)%7))%7}" var="empty">
	 		<div class='calendar-td'>&nbsp;</div>
	 	</c:forEach>
	 	
	 	</div>
	 </div>
	 </div>
	 <div>
	 	<button type="button" class="calendarClose" onClick="window.close()">닫기</button>
	 </div>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function(){
	});
</script>
</html>
