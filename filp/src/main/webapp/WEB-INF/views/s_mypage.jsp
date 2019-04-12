<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="resources/fonts/icomoon/style.css">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">



</head>
<body>

<p>${member.member_name}</p>
<p>${member.member_email}</p>
<p>${member.member_phone}</p>
<p>${member.member_email}</p>
<p>${member.member_email}</p>

	<ul class=”navnav-tabs”><!–nav/ nav-tab 클래스를 추가하면 탭스타일로 나타납니다.–>
		<li class=”active”><a href=“#tab1″ data-toggle=”tab” onclick="myclass(myclass)">내수강보기</a></li>
		<li><a href=“#tab2″ data-toggle=”tab” onclick="myclass(mystudy)">내스터디 보기</a></li><!–탭메뉴를 사용하기위해 data-toggle=”tab”을 지정해줍니다.–>
		<li><a href=”#tab3″ data-toggle=”tab” onclick="myclass(want)">원해요 보기</a></li>
		<li><a href=”#tab4″ data-toggle=”tab” onclick="myclass(wishlist)">위시리스트 보기</a></li>
	</ul>

	<div class=”tab-content”>
		<!–탭내용을 보여주는 곳에 ‘tab-content’ 클래스를걸어줍니다–>
		<div class=”tab-pane active” id=“tab1″>
			<!–nav-tab부분 링크부분과 탭내용을 보여줄 id를 맞춰줍니다–>
			<p>내수강보기 부분입니다.</p>
			<c:forEach var="inclass" items="allInclass" >
				<p>${inclass.class_name}</p>
				<p>${inclass.regdate}</p>
				<p>${inclass.class_area}</p>
				<p>${inclass.class_depa}</p>
				<p>${inclass.class_sd}</p>
				<p>${inclass.class_instructor}</p>
				<p>${inclass.class_termin}</p>
				<p>${inclass.class_participation}</p>
				<p>${inclass.class_detail}</p>
				<p>${inclass.class_img}</p>
				<p>${inclass.class_participation}</p>
				<p>${inclass.class_now_participation}</p>
				<p>${inclass.class_rating}</p>
				<p>${inclass.d_day}</p>
			</c:forEach>
			
		</div>
		<div class=”tab-pane” id=“tab2″>
			<p>내스터디 보기 부분입니다.</p>
			<c:forEach var="study" items="allStudyList" >
				<p>${study.class_name}</p>
			</c:forEach>
		</div>
		<div class=”tab-pane” id=“tab3″>
			<p>내원해요 보기 부분입니다.</p>
			<c:forEach var="want" items="allwantList" >
				<p>${want.class_name}</p>
			</c:forEach>
		</div>
		<div class=”tab-pane” id=“tab4″>
			<p>내위시리스트 보기 부분입니다.</p>
			<c:forEach var="wishlist" items="allwishlist" >
				<p>${wishlist.class_name}</p>
			</c:forEach>
		</div>
	</div>

</body>
</html>