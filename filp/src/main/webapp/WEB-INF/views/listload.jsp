<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
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
<style type="text/css">

.areachk {
	display: none;
}

label {
	width: 100px;
	height: 40px;
	background-color: #e9ecef;
	text-align: center;
	vertical-align: middle;
}

.dropdown {
	font-size: 10px;
	color: white;
	border: none;
	background-color: #e9ecef;
	padding: 5px;
	width:50px;
	height: 30px;
}

.search-area {
	background-color: #e9ecef;
	position:relative;
}

.btnBox {
	margin: auto;
	width: 50%;
	text-align: center;
}
.subdiv{
	float: right;
	margin-top:5px;
	margin-bottom: 5px;
}
#subs{
	font-size: 15px;
	background-color: #30E3CA;
	border:none;
	width:105px;
	height:32px;
	font-weight:bold;
	color:white;
	border-radius: 5px;
}
.labelBox{

}
</style>
</head>
<body>
	<div class="container search-area" data-search>
		<form action="searchlist.do" method="post">
			<input type="hidden" name="search" value="${paramList.search}" /> <input
				type="hidden" name="department" value="${paramList.category}" /> <input
				type="hidden" name="classType" value="${paramList.classType}" />
			<c:set value="${searchList[0].class_type}" var="class_type"></c:set>
			<div class="hiddenBtn" data-null="${areaList}"></div>
			<c:choose>
				<c:when test="${class_type eq 'C'}">
					<div id="areasize-c" data-areasize="${fn:length(areaList)}"></div>
					<c:forEach var="areaList" items="${areaList}" varStatus="seq">
						<label for="carea-${seq.index}"> <input type="checkbox"
							class="areachk" name="selectedarea" id="carea-${seq.index}"
							value="${areaList.class_area}" /> <span class="carea"
							data-area="${areaList.class_area}">${areaList.class_area}</span>
							<span>(${areaList.class_area_count})</span>
						</label>
					</c:forEach>
				</c:when>
				<c:when test="${class_type eq 'S'}">
					<div id="areasize-s" data-areasize="${fn:length(areaList)}"></div>
					<c:forEach var="areaList" items="${areaList}" varStatus="seq">
						<label for="sarea-${seq.index}"> <input type="checkbox"
							class="areachk" name="selectedarea" id="sarea-${seq.index}"
							value="${areaList.class_area}" /> <span class="areabox">
								<span class="sarea" data-area="${areaList.class_area}">${areaList.class_area}</span>
								<span>(${areaList.class_area_count})</span>
						</span>
						</label>
					</c:forEach>
				</c:when>
				<c:when test="${class_type eq 'W'}">
					<div id="areasize-w" data-areasize="${fn:length(areaList)}"></div>
					<c:forEach var="areaList" items="${areaList}" varStatus="seq">
						<label for="warea-${seq.index}"> <input type="checkbox"
							class="areachk" name="selectedarea" id="warea-${seq.index}"
							value="${areaList.class_area}" /> <span class="areabox">
								<span class="warea" data-area="${areaList.class_area}">${areaList.class_area}</span>
								<span>(${areaList.class_area_count})</span>
						</span>
						</label>
					</c:forEach>
				</c:when>
			</c:choose>
			<div class="subdiv">
				<input id="subs" type="submit" value="선택지역 검색">
			</div>
		</form>
	</div>
	<div class="btnBox">
		<button class="dropdown">
			<img alt="updown" src="resources/images/up.png">
		</button>
	</div>
	<div class="site-section bg-white">
		<div class="container">
			<!-- 지역검색 -->
			<div class="area_search">
				<div class="row mb-5">
					<div class="col-md-7 text-left border-primary">
						<h2 class="font-weight-light text-primary">
							<b>검색<span class="text-warning">결과</span></b>
						</h2>
						<p class="color-black-opacity-5">${pageCount}개수업</p>
					</div>
				</div>
			</div>
			<!-- 검색목록 -->
			<div class="row">
				<c:forEach var="searchList" items="${searchList}">
					<div class="loadlist col-3">
						<div class="d-block d-md-flex vertical listing studentAjax">
							<a href="cdetail.do?class_seq=${searchList.seq}"
								class="img d-block"
								style="background-image: url('resources/img/class/${searchList.class_img}')"></a>
							<div class="lh-content">
								<c:choose>
									<c:when test="${searchList.class_type eq 'C'}">
										<a href="tdetail.do?member_seq=${searchList.class_member_seq}">
											<span class="category">${searchList.class_creator_name}</span>
											<span class="instructor_img">등록자 사진</span>
										</a>
										<a href="insertwhishlist.do" class="bookmark"><span
											class="icon-heart"></span></a>
										<h3>
											<a href="cdetail.do?class_seq=${searchList.seq}">${searchList.class_name}</a>
										</h3>
										<div class="mb-0 teacherstar"
											style="width: 90px; float: left;"
											data-minority="${searchList.class_member_rating}"
											onclick="gogostar(this)"></div>
										<span class="review">(${searchList.class_review_count}
											Reviews)</span>
									</c:when>
									<c:otherwise>
										<span class="category">${searchList.class_creator_name}</span>
										<span class="instructor_img">강사사진</span>
										<a href="insertwhishlist.do" class="bookmark"><span
											class="icon-heart"></span></a>
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
		</div>
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
	<script src="resources/js/areaSearch.js" defer="defer"></script>
</body>
</html>
