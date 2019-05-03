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
	 	
	 	
<div class="calendar-title"><span class="font_ant">My</span>&nbsp;<span class="font_pos">Schedule</span></div>
	 <div class="calendar-wrap"	>
	 	<div class="calendar-caption">
	 			<span class="y yearmonth">
					${year}
				</span>
				.
				<span class="m yearmonth">
					${month}
				</span>
	 		<div class="arrowbox">
	 			<a href="scheduleCalendar.do?year=${year}&month=${month-1}">
	 			<button class="backbtn btn" type="button"><img src="resources/images/back.png"></button>
				</a>
				<a href="scheduleCalendar.do?year=${year}&month=${month+1}">
				<button class="nextbtn btn" type="button"><img src="resources/images/next.png"></button>
				</a>
			</div>
	 	</div>
	 	<div class="calendar-thead">
	 	<div class="calendar-tr">
	 		<div class="calendar-td weeks top-left">일</div>
	 		<div class="calendar-td weeks">월</div>
	 		<div class="calendar-td weeks">화</div>
	 		<div class="calendar-td weeks">수</div>
	 		<div class="calendar-td weeks">목</div>
	 		<div class="calendar-td weeks">금</div>
	 		<div class="calendar-td weeks top-right">토</div>
	 	</div>
	 	<div class="calendar-tr">
	 	<c:forEach begin="1" end="${dayOfWeek-1}">
	 		<div class="calendar-td alldays">&nbsp;</div>
	 	</c:forEach>
	 	
	 	<c:forEach begin="1" end="${lastDay}" varStatus="seq">
	 		<div class="calendar-td alldays">
				<div class="countview"><span class="daytext">${seq.count}&nbsp;</span></div>
				<div class="mySchedules">
					<c:forEach items="${mySchedule}" var="mySchedule" varStatus="count">
						<c:if test="${mySchedule.years == year && mySchedule.months == month && mySchedule.days == seq.count}">
							<span class="schedulename">${mySchedule.class_name}</span>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<c:if test="${(dayOfWeek-1+seq.index)%7==0}">
				</div><div class='calendar-tr'>
	 		</c:if>
	 	</c:forEach>
	 	<c:forEach begin="1" end="${(7-((dayOfWeek-1+lastDay)%7))%7}" var="empty">
	 		<div class="calendar-td alldays">&nbsp;</div>
	 	</c:forEach>
	 	
	 	</div>
	 </div>
	 </div>
	 <div class="close-button">
	 	<button type="button" class="calendarClose" onClick="window.close()">닫기</button>
	 </div>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="resources/js/mySchedule.js"></script>
</html>
