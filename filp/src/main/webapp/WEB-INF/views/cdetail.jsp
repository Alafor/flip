<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 강의 상세보기 페이지 : 수업 설명, 강의 평점, 현재 참여 중인 인원, 디데이 -->
<title>강의 상세보기</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">

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
						강의<span class="text-warning">상세보기</span>
					</h2>
					<p class="color-black-opacity-5">Class detail</p>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">
	<!-------------------------------------------------------------------------------------------------->

<body>
<!-- 강사의 강의 이름-->
${cDto[0].class_name}
${cDto[0].class_info}
${cDto[0].regdate}
${cDto[0].class_area}
${cDto[0].class_depa}
${cDto[0].class_sd}
${cDto[0].class_cd}
${cDto[0].class_week}
${cDto[0].class_starttime}
${cDto[0].class_time}
${cDto[0].class_price}
${cDto[0].class_participation}
${cDto[0].class_detail}
${cDto[0].class_img}
${cDto[0].class_hashtag}
${cDto[0].class_member_rating}
${cDto[0].class_now_participation}
${cDto[0].class_d_day}


<!-- <div id="dropDownSelect1"></div> -->
<div>
	<jsp:include page="footer.jsp" />
</div>

	<script type="text/javascript"
			src="resources/js/jquery-3.3.1.min.js"></script>
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
	<script src="resources/js/signup.js"></script>

</body>
</html>