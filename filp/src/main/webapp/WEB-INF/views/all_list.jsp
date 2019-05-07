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
<title>Flip</title>
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
<link rel="stylesheet" href="resources/css/searchlist.css">
</head>
<body>
	<div class="site-wrap">
		<div class="site-mobile-menu">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>

		<!-- header -->
		<jsp:include page="header.jsp" />
		<!-- header 종료 -->
		<div class="site-blocks-cover overlay"
			style="background-image: url('resources/images/제빵.png');"
			data-aos="fade" data-stellar-background-ratio="0.5">
			<div class="container">
				<div
					class="row align-items-center justify-content-center text-center">
					<div class="col-md-12">
						<div class="row justify-content-center mb-4">
							<div class="col-md-8 text-center">
								<h1 class="" data-aos="fade-up">
									지루한 일상을 뒤엎다!!<span class="text-warning">플</span><span
										class="text-primary">립</span>
								</h1>
								<p data-aos="fade-up" data-aos-delay="100">You can buy, sell
									anything you want.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="site-section bg-light">
						<div class="container" >
			<!-- 카테고리 시작 -->
				<div class="overlap-category mb-5">
					<div class="row align-items-stretch no-gutters">
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-1 col-lg-1">
							<a href="searchlist.do" class="popular-category h-100"> <span
								class="icon"> <span class="flaticon-meeting"></span>
							</span> <span class="caption mb-2 d-block"><b>전체수업</b></span> <span
								class="number">219</span>
							</a>
						</div>
						
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=exercise" class="popular-category h-100" data-category="exercise"> <span class="icon"><span
									class="flaticon-running"></span></span> <span
								class="caption mb-2 d-block"><b>운동</b></span> <span
								class="number">3,921</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=music" class="popular-category h-100" data-category="music"> <span
								class="icon"><span class="flaticon-microphone"></span></span> <span
								class="caption mb-2 d-block"><b>음악</b></span> <span
								class="number">398</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=photo" class="popular-category h-100" data-category="photo"> <span
								class="icon"><span class="flaticon-cameras"></span></span> <span
								class="caption mb-2 d-block"><b>사진</b></span> <span
								class="number">1,229</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=yolo" class="popular-category h-100" data-category="lifestyle"> <span
								class="icon"><span class="flaticon-dance"></span></span> <span
								class="caption mb-2 d-block"><b>YOLO</b></span> <span
								class="number">32,891</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=investment" class="popular-category h-100" data-category="investment"> <span
								class="icon"><span class="flaticon-money"></span></span> <span
								class="caption mb-2 d-block"><b>재태크</b></span> <span
								class="number">29,221</span>
							</a>
						</div>


						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=beauty" class="popular-category h-100" data-category="beauty"> <span
								class="icon"><span class="flaticon-soap"></span></span> <span
								class="caption mb-2 d-block"><b>뷰티</b></span> <span
								class="number">32,891</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=language" class="popular-category h-100" data-category="language"> <span
								class="icon"><span class="flaticon-book"></span></span> <span
								class="caption mb-2 d-block"><b>외국어</b></span> <span
								class="number">29,221</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="#" class="popular-category h-100" data-category="vedit"> <span
								class="icon"><span class="flaticon-video-player"></span></span>
								<span class="caption mb-2 d-block"><b>영상편집</b></span> <span
								class="number">32,891</span>
							</a>
						</div>
						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=travel" class="popular-category h-100" data-category="travel"> <span
								class="icon"><span class="flaticon-cooking"></span></span> <span
								class="caption mb-2 d-block"><b>요리</b></span> <span
								class="number">29,221</span>
							</a>
						</div>


						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=it" class="popular-category h-100" data-category="it"> <span
								class="icon"><span class="flaticon-workstation"></span></span> <span
								class="caption mb-2 d-block"><b>IT</b></span> <span
								class="number">219</span>
							</a>
						</div>

						<div class="col-sm-3 col-md-2 mb-1 mb-lg-0 col-lg-1">
							<a href="searchlist.do?department=design" class="popular-category h-100" data-category="design"> <span
								class="icon"><span class="flaticon-presenter"></span></span> <span
								class="caption mb-2 d-block"><b>디자인</b></span> <span
								class="number">219</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리 종료-->
			<div class="container">
				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">선생님 <span
						class="text-warning">찾기</span>
					</li>
					<li class="tab-link" data-tab="tab-2">학생 <span
						class="text-warning">찾기</span>
					</li>
					<li class="tab-link" data-tab="tab-3">스터디 <span
						class="text-warning">찾기</span>
					</li>
				</ul>
			</div>
			
			</div>
			
				<div class="container">
				<div id="tab-1" class="tab-content current" style="padding-top:0px;"></div>
				<div id="tab-2" class="tab-content" style="padding-top:0px;"></div>
				<div id="tab-3" class="tab-content" style="padding-top:0px;"></div>
				</div>
			
			
			<!-- 목록 container 종료 -->
		<!-- 사이트 섹션 종료 -->
		<div>
			<jsp:include page="footer.jsp" />
		</div>
	</div>
	<div class="param" id="search" data-param="${paramList.search}"></div>
	<div class="param" id="category" data-param="${paramList.category}"></div>
	<div class="param" id="classType" data-param="${paramList.classType}"></div>
	<div class="param" id="addArea" data-param="${addArea}"></div>
	
	<!-- site-wrap div 종료 -->
	<!-- footer종료 -->
	
	<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countdown.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.min.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/rangeslider.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/searchlist.js" defer="defer"></script>
</body>
</html>