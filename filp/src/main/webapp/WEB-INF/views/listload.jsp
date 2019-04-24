<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div class="row mb-5">
		<div class="search-area" data-search>
			<form action="searchList.do">
			<c:forEach var="areaList" items="${areaList}"  varStatus="seq">
				
				<!-- jquery value 추가 -->
				<label for="area-${seq.count}">
					<input type="checkbox" id="area-${seq.count}" />
					<span class="area" data-area="${areaList.class_area}">${areaList.class_area} (${areaList.class_area_count})</span>
				</label>	
			</c:forEach>
			<input type="submit" value="선택지역 검색">
			</form>
		</div>
	</div>
	<div class="row mb-5">
		<div class="col-md-7 text-left border-primary">
			<h2 class="font-weight-light text-primary">
				<b>검색<span class="text-warning">결과</span></b>
			</h2>
			<p class="color-black-opacity-5">${pageCount}개수업</p>
		</div>
	</div>
		
		<div class="row">
		<c:forEach var="searchList" items="${searchList}">
			<div class="loadlist col-3">	
			<div class="d-block d-md-flex vertical listing studentAjax">
				<a href="cdetail.do?class_seq=${searchList.seq}" class="img d-block"
					style="background-image: url('resources/images/img_4.jpg')"></a>
				<div class="lh-content">
					<c:choose>
					<c:when test="${searchList.class_type eq 'C'}">
					<a href="tdetail.do?member_seq=${searchList.class_member_seq}">
					<span class="category">${searchList.class_creator_name}</span> <span
						class="instructor_img">등록자 사진</span></a> <a href="insertwhishlist.do"
						class="bookmark"><span class="icon-heart"></span></a>
					<h3>
						<a href="cdetail.do?class_seq=${searchList.seq}">${searchList.class_name}</a>
					</h3>
					<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${searchList.class_member_rating}" onclick="gogostar(this)">
					</div>					
					<span class="review" >(${searchList.class_review_count} Reviews)</span>
					</c:when>
					<c:otherwise>
						<span class="category">${searchList.class_creator_name}</span> 
						<span class="instructor_img">강사사진</span>
						<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>
						<h3>
							<a href="cdetail.do?class_seq=${searchList.seq}">${searchList.class_name}</a>
						</h3>
					</c:otherwise>
					</c:choose>
					<address>${searchList.class_area}</address>
				</div>
		</div>
		</div>
		</c:forEach>
		</div>
<script defer
		src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
		integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
		crossorigin="anonymous"></script>
<script defer
		src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
		integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
		crossorigin="anonymous"></script>	
<script src="resources/js/star.js" defer="defer"></script>
</body>
</html>
