<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 작성</title>
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

<!-- 별점 부트스트랩, 	css, js -->
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
.starR1 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat -52px 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 15px;
	height: 30px;
	float: left;
	text-indent: -9999px;
	cursor: pointer;
}

.starR1.on {
	background-position: 0 0;
}

.starR2.on {
	background-position: -15px 0;
}
</style>
<script type="text/javascript">
$(function(){
	$('.starRev > span').mouseenter(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
	$(".starR1,.starR2").mouseover(function(){
		$("input[name=review_rating]").val(($(".on").length)/2); 		
	});
});
</script>
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
						후기<span class="text-warning">작성</span>
					</h2>
					<p class="color-black-opacity-5">Review</p>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">

					<!-------------------------------------------------------------------------------------------------->

					<form action="reviewinsert.do" class="p-5 bg-white" method="post"
						style="border: 2px solid #30e3ca; border-radius: 20px;">
					<input type="hidden" name="review_class_seq" value="${param.class_seq}">
					<%-- <input type="hidden" name="review_member_seq" value="${param.member_seq}"> --%>
						<div class="row form-group">

							<div class="col-md-12 validate-input" data-validate="후기를 남겨주세요">
								<textarea class="form-control animated" cols="50"
									id="new-review" name="review_detail" placeholder="여기에 후기를 남겨주세요."
									rows="5"></textarea>
								<input id="ratings-hidden" name="review_rating" type="hidden">
							</div>
						</div>

						<!-- 별모양 -->
						<div class="starRev">
							<span class="starR1 on">별1_왼쪽</span> <span class="starR2">별1_오른쪽</span>
							<span class="starR1">별2_왼쪽</span> <span class="starR2">별2_오른쪽</span>
							<span class="starR1">별3_왼쪽</span> <span class="starR2">별3_오른쪽</span>
							<span class="starR1">별4_왼쪽</span> <span class="starR2">별4_오른쪽</span>
							<span class="starR1">별5_왼쪽</span> <span class="starR2">별5_오른쪽</span>
						</div>

							<br><br>
							<!-- 저장버튼 -->
							<div class="row form-group" style="text-align: center;">
								<div class="col-md-12">
									<div class="stars starrr" data-rating="0"></div>
									<input type="submit" value="저장"
										class="btn btn-primary py-2 px-4 text-white"
										style="width: 100%;">
								</div>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- footer -->
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