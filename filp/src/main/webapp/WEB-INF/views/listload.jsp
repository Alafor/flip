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
<link rel="stylesheet" href="resources/css/listcss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div class="container search-area" data-search>
	<div class="areaArea">
		<form action="searchlist.do" method="post">
			<input type="hidden" name="search" value="${paramList.search}" /> <input
				type="hidden" name="department" value="${paramList.category}" /> <input
				type="hidden" name="classType" value="${paramList.classType}" />
			<c:set value="${searchList[0].class_type}" var="class_type"></c:set>
			<div class="hiddenBtn" data-null="${fn:length(areaList)}"></div>
			<div class="areaSelText"><img src="resources/images/address2.png">&nbsp;&nbsp;&nbsp;<span class="selText">지역을 선택해주세요.</span></div>
			<c:choose>
				<c:when test="${class_type eq 'C'}">
					<div id="areasize-c" class="labelBox" data-areasize="${fn:length(areaList)}">
					<c:forEach var="areaList" items="${areaList}" varStatus="seq">
						<label for="carea-${seq.index}"> <input type="checkbox"
							class="areachk" name="selectedarea" id="carea-${seq.index}"
							value="${areaList.class_area}" />
							<span class="areabox"> 
							<span class="carea areaspan" data-area="${areaList.class_area}">${areaList.class_area}</span>
							<span class="areaspan">(${areaList.class_area_count})</span>
							</span>
						</label>
					</c:forEach>
					</div>
				</c:when>
				<c:when test="${class_type eq 'S'}">
					<div id="areasize-s" class="labelBox" data-areasize="${fn:length(areaList)}">
					<c:forEach var="areaList" items="${areaList}" varStatus="seq">
						<label for="sarea-${seq.index}"> 
						<input type="checkbox" class="areachk" name="selectedarea" id="sarea-${seq.index}" value="${areaList.class_area}" />
							<span class="areabox">
								<span class="sarea areaspan" data-area="${areaList.class_area}">${areaList.class_area}</span>
								<span  class="areaspan">(${areaList.class_area_count})</span>
							</span>
						</label>
					</c:forEach>
					</div>
				</c:when>
				<c:when test="${class_type eq 'W'}">
					<div id="areasize-w" class="labelBox" data-areasize="${fn:length(areaList)}">
					<c:forEach var="areaList" items="${areaList}" varStatus="seq">
						<label for="warea-${seq.index}"> <input type="checkbox"
							class="areachk" name="selectedarea" id="warea-${seq.index}"
							value="${areaList.class_area}" /> <span class="areabox">
								<span class="warea areaspan" data-area="${areaList.class_area}">${areaList.class_area}</span>
								<span  class="areaspan">(${areaList.class_area_count})</span>
						</span>
						</label>
					</c:forEach>
					</div>
				</c:when>
			</c:choose>
			<div class="subdiv">
			<input id="subs" type="submit" value="선택지역 검색">
			</div>
		</form>
		</div>
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
						<p class="color-black-opacity-5">${allPageCount}개수업</p>
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
										<div class="instructorBox">
										<a href="tdetail.do?member_seq=${searchList.class_member_seq}">
										<span class="instructor_img" style="background-image:url('resources/img/member/${searchList.profile_img}')"></span> 
										<span class="instructor_name">${searchList.class_creator_name}</span></a>
										</div>
										<a href="insertwhishlist.do?class_seq=${searchList.seq}" class="bookmark" data-classseq="${searchList.seq}"><span class="icon-heart"></span></a>
										<h3 class="classnames" >
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
										<div class="instructorBox">
										<span class="instructor_img" style="background-image:url('resources/img/member/${searchList.profile_img}')"></span> 
										<span class="instructor_name">${searchList.class_creator_name}</span>
										</div>
										<a href="insertwhishlist.do?class_seq=${searchList.seq}" class="bookmark" data-classseq="${searchList.seq}"><span class="icon-heart"></span></a>
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
			<div class="container pagingbox">
				<c:choose>
					<c:when test="${class_type eq 'W'}">
						<form action="searchlist.do" method="post" id="pages-w" >
							<input type="hidden" name="search" value="${paramList.search}" />
							<input type="hidden" name="department" value="${paramList.category}" /> 
							<input type="hidden" name="classType" value="${paramList.classType}" />
							<input type="hidden" id="numId" name="num" />
							<div id="areatest-w" class="pagearea" style="display: none;">
								<c:forEach var="areaList" items="${areaList}" varStatus="seq">
									<input type="checkbox" name="selectedarea" value="${areaList.class_area}" checked="checked"/>${areaList.class_area}
								</c:forEach>
							</div>
							<div id="thisPage" data-thisPage="${thisPage}" style="display: none;"></div>
								<c:if test="${thisPage ge '6'}">
								<input type="button" id="prev" data-allpage="${endpage}" data-page="${nowBlock*5-5}" value="이전" onclick="pagesubmit(this)">								
								</c:if>
							<c:forEach begin="${beginpage}" end="${endpage}" varStatus="seq">
								<input type="button" class="buttons" data-allpage="${endpage}" data-page="${seq.index}" value="${seq.index}" onclick="pagesubmit(this)"> 
							</c:forEach>	
								<c:if test="${pageCount gt '5' && endpage ne pageCount}">
								<input type="button" id="next"  data-allpage="${endpage}" data-page="${nowBlock*5+1}" value="다음" onclick="pagesubmit(this)">
								</c:if>
								
						</form>
					</c:when>
					<c:when test="${class_type eq 'C'}">
						<form action="searchlist.do" method="post" id="pages-c">
							<input type="hidden" name="search" value="${paramList.search}" />
							<input type="hidden" name="department" value="${paramList.category}" /> 
							<input type="hidden" name="classType" value="${paramList.classType}" />
							<input type="hidden" id="numId" name="num" />
							<div id="areatest-c" class="pagearea" style="display: none;">
								<c:forEach var="areaList" items="${areaList}" varStatus="seq">
									<input type="checkbox" name="selectedarea" value="${areaList.class_area}" checked="checked"/>${areaList.class_area}
								</c:forEach>
							</div>
							<div id="thisPage" data-thisPage="${thisPage}" style="display: none;"></div>
							<c:if test="${thisPage gt '5'}">
								<input type="button" id="prev" data-allpage="${endpage}" data-page="${nowBlock*5-5}" value="이전" onclick="pagesubmit(this)">								
								</c:if>
							<c:forEach begin="${beginpage}" end="${endpage}" varStatus="seq">
								<input type="button" class="buttons" data-allpage="${endpage}" data-page="${seq.index}" value="${seq.index}" onclick="pagesubmit(this)"> 
							</c:forEach>	
								<c:if test="${pageCount gt '5' && endpage ne pageCount}">
								<input type="button" id="next"  data-allpage="${endpage}" data-page="${nowBlock*5+1}" value="다음" onclick="pagesubmit(this)">
								</c:if>
						</form>		
					</c:when>
					<c:when test="${class_type eq 'S'}">
						<form action="searchlist.do" method="post" id="pages-s">
							<input type="hidden" name="search" value="${paramList.search}" />
							<input type="hidden" name="department" value="${paramList.category}" /> 
							<input type="hidden" name="classType" value="${paramList.classType}" />
							<input type="hidden" id="numId" name="num" />
							<div id="areatest-s" class="pagearea" style="display: none;">
								<c:forEach var="areaList" items="${areaList}" varStatus="seq">
									<input type="checkbox" name="selectedarea" value="${areaList.class_area}" checked="checked"/>${areaList.class_area}
								</c:forEach>
							</div>
							<div id="thisPage" data-thisPage="${thisPage}" style="display: none;"></div>
							<c:if test="${thisPage ge '6'}">
								<input type="button" id="prev" data-allpage="${endpage}" data-page="${nowBlock*5-5}" value="이전" onclick="pagesubmit(this)">								
								</c:if>
							<c:forEach begin="${beginpage}" end="${endpage}" varStatus="seq">
								<input type="button" class="buttons" data-allpage="${endpage}" data-page="${seq.index}" value="${seq.index}" onclick="pagesubmit(this)"> 
							</c:forEach>	
								<c:if test="${pageCount gt '5' && endpage ne pageCount}">
								<input type="button" id="next"  data-allpage="${endpage}" data-page="${nowBlock*5+1}" value="다음" onclick="pagesubmit(this)">
								</c:if>
						</form>		
					</c:when>
				</c:choose>
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
