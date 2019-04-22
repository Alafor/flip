<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 강사 상세보기 페이지 : 강사 프로필, 강사의 강의 리스트, 강사의 강의 후기 리스트 -->
<title>강사 상세보기</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">

<!--  상세보기 페이지 부트스트랩 &css -->
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!--  -->

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
<link rel="stylesheet"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">



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
						강의<span class="text-warning">상세보기</span>
					</h2>
					<p class="color-black-opacity-5">Teacher&amp;Detail</p>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">
					<!-------------------------------------------------------------------------------------------------->

					<!-- 부트스트랩 -->
		
					<div class="container">
						<div class="row">
							<div class="span12">
								<div id="tab" class="btn-group" data-toggle="buttons-radio">
									<a href="#prices2" class="btn btn-large btn-info active"
										data-toggle="tab">Top</a> <a href="#features2"
										class="btn btn-large btn-info" data-toggle="tab">Introduction</a>
									<a href="#requests2" class="btn btn-large btn-info"
										data-toggle="tab">Class Information</a> <a href="#contact2"
										class="btn btn-large btn-info" data-toggle="tab">Review</a>
								</div>

								<div class="tab-content">
									<div class="tab-pane active" id="prices2">
										<br>
										<p class="lead">${tDto.member_name}</p>
										<div class="row">
											<div class="span3">
												<img src="http://placehold.it/200x200">
											</div>
											<div class="span9">
												<p>${tDto.avg}</p>
												<p>${tDto.member_info}</p>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="features2">
										<br>
										<p class="lead">Features content</p>
										<div class="row">
											<div class="span6">
												<p>For a full list of our services including support and
													consultancy for start-up businesses please see the Our
													Services section of the website. Alternatively if you have
													a specific service or question in mind please don’t
													hesitate to contact us to discuss this using the contact
													details on the Contact Us page of the site.</p>
											</div>
											<div class="span6">
												<img src="http://placehold.it/400x400">
											</div>
										</div>
									</div>
									<div class="tab-pane" id="requests2">
										<br>
										<p class="lead">Requests content</p>
										<div class="row">
											<div class="span3">
												<img src="http://placehold.it/200x200">
											</div>
											<div class="span5">
											<p>
											${tDto.avg}
											</p>
												<p>${tDto.member_info}</p>
											</div>
											<div class="span4">
												<img src="http://placehold.it/400x200">
											</div>
										</div>
									</div>
									<div class="tab-pane" id="contact2">
										<br>
										<p class="lead">Contact Us</p>
										<form class="well span8">
											<div class="row">
												<div class="span3">
													<label>First Name</label> <input type="text" class="span3"
														placeholder="Your First Name"> <label>Last
														Name</label> <input type="text" class="span3"
														placeholder="Your Last Name"> <label>Email
														Address</label> <input type="text" class="span3"
														placeholder="Your email address"> <label>Subject
														<select id="subject" name="subject" class="span3">
															<option value="na" selected="">Choose One:</option>
															<option value="service">General Customer Service</option>
															<option value="suggestions">Suggestions</option>
															<option value="product">Product Support</option>
													</select>
													</label>
												</div>
												<div class="span5">
													<label>Message</label>
													<textarea name="message" id="message"
														class="input-xlarge span5" rows="10"></textarea>
												</div>

												<button type="submit" class="btn btn-primary pull-right">Send</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>



					<!-- 강사 상세보기 페이지 값 시험으로 받아오기 -->
					<table>
						<tr>
							<td>
								<!-- 강사 프로필 사진 --> ${tDto.member_profile}
							</td>
							<!-- 강사 이름 -->
							<td>${tDto.member_name}</td>
						</tr>
						<tr>
							<!-- 강사 평점 -->
							<td>${tDto.avg}</td>
						</tr>
						<tr>
							<!-- 강사 상세사항 -->
							<td>${tDto.member_info}</td>
						</tr>
						<tr>
							<!-- 강의 리스트 -->
							<td>${clist[0].class_name}</td>
						</tr>
						<tr>
							<!-- 후기 내용 -->
							<td>${rDto[0].review_detail}</td>
						</tr>
					</table>


				</div>
			</div>
		</div>
	</div>

	<!-- <div id="dropDownSelect1"></div> -->
	<div>
		<jsp:include page="footer.jsp" />
	</div>

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
	<script src="resources/js/signup.js"></script>


</body>
</html>