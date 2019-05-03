<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE>
<html>
<head>
<title>강사 초빙 강의 등록</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800"
	rel="stylesheet">
<link rel="stylesheet" href="resources/fonts/icomoon/style.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<link href="resources/dist/css/datepicker.min.css" rel="stylesheet"
	type="text/css">
<script src="resources/dist/js/datepicker.min.js"></script>
<script src="resources/dist/js/datepicker.ko.js"></script>
<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<style type="text/css">
#id {
	margin-left: 20px;
}

.hidden_input {
	margin: 0 auto;
}

.hidden_input label {
	padding: .5em .75em;
	color: #fff;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #30e3ca;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

.hidden_input input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
<script src="resources/js/AddClass_W.js"></script>
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
	</div>
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- header 종료 -->

	<div class="site-blocks-cover inner-page-cover overlay"
		style="background-image: url(resources/images/아이.jpg);"
		data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="container">
			<div
				class="row align-items-center justify-content-center text-center">
				<div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
					<div class="row justify-content-center mt-5">
						<div class="col-md-8 text-center">
							<h1>일상을 뒤집다.플립</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						강의<span class="text-warning">등록</span>
					</h2>
					<p class="color-black-opacity-5">Register&amp;Class</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">
					<form class="p-5 bg-white validate-form" action="class_add.do"
						method="post"
						style="border: 2px solid #30e3ca; border-radius: 20px;">
						<input type="hidden" name="class_type" value="W"> 
						<input type="hidden" id="class_sd" name="class_sd" value="">
						<input type="hidden" id="class_cd" name="class_cd" value="">
							<input type="hidden" id="class_week" name="class_week" value="">
						<div class="row form-group">
							<div class="col-md-12">
								<label class="text-black" for="class_depa">카테고리</label> <select
									class="form-control" name='class_depa'>
									<option value="exercise">운동</option>
									<option value="music">음악</option>
									<option value="photo">사진</option>
									<option value="yolo">yolo</option>
									<option value="investment">재테크</option>
									<option value="beauty">뷰티</option>
									<option value="language">외국어</option>
									<option value="videoedit">영상편집</option>
									<option value="it">IT</option>
									<option value="design">디자인</option>
									<option value="cook">요리</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="이름을 입력해주세요">
								<label class="text-black" for="class_name">이름</label> <input
									type="text" class="form-control" name="class_name">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input"
								data-validate="수업 요약을 입력해주세요">
								<label class="text-black" for="class_info">수업 요약</label>
								<textarea rows="5" cols="" class='form-control'
									name="class_info"></textarea>
							</div>
							<div id="message" style="margin-left: 20px; color: red;"></div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<label class="text-black" for="class_area">지역 설정</label> <select
									class="form-control" name='class_area'>
									<option value="강남구">강남구</option>
									<option value="강동구">강동구</option>
									<option value="강북구">강북구</option>
									<option value="강서구">강서구</option>
									<option value="관악구">관악구</option>
									<option value="광진구">광진구</option>
									<option value="구로구">구로구</option>
									<option value="금천구">금천구</option>
									<option value="노원구">노원구</option>
									<option value="도봉구">도봉구</option>
									<option value="동대문구">동대문구</option>
									<option value="동작구">동작구</option>
									<option value="마포구">마포구</option>
									<option value="서대문구">서대문구</option>
									<option value="서초구">서초구</option>
									<option value="성동구">성동구</option>
									<option value="성북구">성북구</option>
									<option value="송파구">송파구</option>
									<option value="양천구">양천구</option>
									<option value="영등포구">영등포구</option>
									<option value="용산구">용산구</option>
									<option value="은평구">은평구</option>
									<option value="종로구">종로구</option>
									<option value="중구">중구</option>
									<option value="중랑구">중랑구</option>
								</select>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input "
								data-validate="날자를 선택해 주세요">
								<label class="text-black" for="email">수업 날짜</label> <input
									type="text" id="daterange" class="form-control" value="" />
							</div>
						</div>
							
							

						<label class="text-black" for="birth">수업 시작시간</label>
						<div class="time_container">
							<div class="form-group">
								<div class="row">
									<div class="col-xs-4 col-md-4 col-sm-4">
										<select class="form-control .col-xs-6 .col-md-4"
											id="class_starthour1" onchange='sumclasstime(this)'>
										</select>
									</div>
									<div class="col-xs-4 col-md-4 col-sm-4">
										<select class="form-control .col-xs-6 .col-md-4"
											id="class_startmin1" onchange='sumclasstime(this)'>
										</select>
									</div>
									<input type='hidden' name='class_starttime'> 
									<a href='#' class='col-xs-1 col-md-1 col-sm-1'
										onclick='chkClassTime(this); return false'> <i
										style='display: inline-block; margin-top: 10%;'
										class='flaticon-done icon-2x'></i></a>
									<span style="padding-left: 5px;">시간체크</span>
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="수업시간을 정해수세요">
								<label class="text-black" for="class_time">수업 시간(분)</label> <input
									type="number" class="form-control" id="class_time"
									name="class_time" placeholder="수업 진행 시간(분)" onchange="changeOkTimes()">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="인원을 정해수세요">
								<label class="text-black" for="class_participation">인원
									설정</label> <input type="number" class="form-control"
									name="class_participation" placeholder="최소 모집 인원">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="수업료를 입력해주세요">
								<label class="text-black" for="class_price">금액 설정</label> <input
									type="number" class="form-control" name="class_price">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input"
								data-validate="수업 상세내용을 적어주세요.">
								<label class="text-black" for="class_detail">수업 상세내용</label>
								<textarea class="form-control" rows="" cols=""
									name="class_detail" placeholder="원하는 강사 스타일, 강의 방식, 강의 내용 등을 적어주세요."></textarea>
							</div>
						</div>

						<div class="row form-group" style="text-align: center;">
							<div class="col-md-12">
								<input type="submit" value="강사 초빙 강의 등록 "
									class="btn btn-primary py-2 px-4 text-white"
									style="width: 100%;">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>






	<!-- <div id="dropDownSelect1"></div> -->
	<div>
		<jsp:include page="footer.jsp" />
	</div>



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
	<script src="resources/js/signup.js"></script>

</body>
</html>