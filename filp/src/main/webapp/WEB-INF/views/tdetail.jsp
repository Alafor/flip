<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html;charset=utf-8");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 강사 상세보기 페이지 : 강사 프로필, 강사의 강의 리스트, 강사의 강의 후기 리스트 -->
<title>강사 상세보기</title>
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
<link rel="stylesheet"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	
<!-- tab menu 부트스트랩 css -->
<style type="text/css">
nav > .nav.nav-tabs{

  border: none;
    color:#fff;
    background: #a0a0a0;
    border-radius:0;

}
nav > div a.nav-item.nav-link,
nav > div a.nav-item.nav-link.active
{
  border: none;
    padding: 18px 25px;
    color:#fff;
    background: #a0a0a0;
    border-radius:0;
}

nav > div a.nav-item.nav-link.active:after
 {
  content: "";
  position: relative;
  bottom: -60px;
  left: -10%;
  border: 15px solid transparent;
  border-top-color: #30E3CA ;
}
.tab-content{
  background: #fdfdfd;
    line-height: 25px;
    border: 1px solid #ddd;
    border-top:5px solid #30E3CA;
    border-bottom:5px solid #30E3CA;
    padding:30px 25px;
}

nav > div a.nav-item.nav-link:hover,
nav > div a.nav-item.nav-link:focus
{
  border: none;
    background: #30E3CA;
    color:#fff;
    border-radius:0;
    transition:background 0.20s linear;
}
</style>
<!-------------------------------------->
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp" />
	<!-- header 종료 -->

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
						강사<span class="text-warning">상세보기</span>
					</h2>
					<p class="color-black-opacity-5">Teacher&amp;Detail</p>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">
					<!-------------------------------------------------------------------------------------------------->

					<!-- 강사 이미지 -->
					<div class="container">
						<div class="user-image">
						<img src="resources/img/member/${tDto.member_profile}" alt="Image"
										class="img-fluid mb-3">
						</div>

						<!-- 강사 이름 -->
						<div class="user-name">
							<h3>${tDto.member_name}</h3>
						</div>

						<!-- 강사 별 --->
						<div class="mb-0 teacherstar" data-minority="${tDto.avg}" onclick="gogostar(this)">
						</div>


						<!-- 탭 이동 메뉴 -->
						<div class="container">
							<div class="row">
								<div class="col-xs-12 ">
									<nav>
									<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
										<a class="nav-item nav-link active" id="nav-home-tab"
											data-toggle="tab" href="#nav-home" role="tab"
											aria-controls="nav-home" aria-selected="	true">TOP</a> <a
											class="nav-item nav-link" id="nav-profile-tab"
											data-toggle="tab" href="#nav-profile" role="tab"
											aria-controls="nav-profile" aria-selected="false">Introduction</a>
										<a class="nav-item nav-link" id="nav-contact-tab"
											data-toggle="tab" href="#nav-contact" role="tab"
											aria-controls="nav-contact" aria-selected="false">Class
											Information</a> <a class="nav-item nav-link" id="nav-about-tab"
											data-toggle="tab" href="#nav-about" role="tab"
											aria-controls="nav-about" aria-selected="false">Review</a>
									</div>
									</nav>
									<!-- top 탭의 내용 -->
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home"
											role="tabpanel" aria-labelledby="nav-home-tab">
											${tDto.member_info}</div>
										<!-- introduction 탭의 내용 -->
										<div class="tab-pane fade" id="nav-profile" role="tabpanel"
											aria-labelledby="nav-profile-tab">${tDto.member_info}</div>
										<!-- class information 탭의 내용 -->
										<div class="tab-pane fade" id="nav-contact" role="tabpanel"
											aria-labelledby="nav-contact-tab">
											<%-- 값 나오나 하나만 받아보기 ${clist[0].class_name} --%>
											<!-- 강의 목록 가져오기 -->
											<table>
												<c:forEach items="${clist}" var="classdto">
													<tr>
														<td>
														<%-- <td>${classdto.seq}</td> --%>
														<td>${classdto.class_name}</td>
													</tr>
												</c:forEach>
											</table>
										</div>

										<!-- review 탭의 내용 -->
										<div class="tab-pane fade" id="nav-about" role="tabpanel"
											aria-labelledby="nav-about-tab">
											<%-- 값 나오나 하나만 받아보기 ${rDto[0].review_detail} --%>
											<!-- 후기 목록 가져오기 -->
											<table>
												<c:forEach items="${rDto}" var="reviewdto">
													<tr>
														<td>
														<%-- <td>${reviewdto.review_seq}</td> --%>
														<td>${reviewdto.review_detail}<br><br></td>
													</tr>
												</c:forEach>
											</table>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>


					<!-- footer시작 -->

				</div>
			</div>
		</div>
	</div>

					<!-- <div id="dropDownSelect1"></div> -->
					<div>
						<jsp:include page="footer.jsp" />
					</div>

	
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
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
		integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
		crossorigin="anonymous"></script>
	<script defer
		src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
		integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
		crossorigin="anonymous"></script>
	<script src="resources/js/star.js" defer="defer"></script>
	<script src="resources/js/star.js" defer="defer"></script>
</body>
</html>