<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>강사 마이페이지</title>
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

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<style type="text/css">
	.site-section{
	background-color: #f8f9fa;
	}
	body{
        font-family: "Nanum Gothic";
        
      }
     h1, h2, h3, h4, h5, h6 {
      font-family: "Nanum Gothic" !important;
      
    }
    .member_container{
/*      	background-color:rgba(138,138,138,0.2); */
    	padding: 20px 20px 20px 20px;
    	margin: 0 auto;
    	margin-bottom: 50px;

    	
    }
    .member_infomation_detail{
    	display: inline-block;
    	width: 275px;
    	text-align: center;
    }
    .member_infomation{
   		padding: 40px 50px 20px 20px;
    	display: inline-block;
    	float: right;
    }
    .member_infomation_head{font-size: 20px;border-bottom: 1px solid #ced4da;margin-bottom: 10px;}
    .member_image {
    width: 220px;
    height: auto;
    object-fit: cover;
    border-radius: 50%;
    float: left;
    margin-left: 50px;
    }
    .member_img{display: inline-block;padding-right: 30px;} 
    .member_button{}
    .mySchedule{
    	display: inline-block;
    	float: right;
    }
    .w3-border-aqua{background: #30E3CA;
    color: white;
    font-weight: bold;
    border-radius: 8px;
    text-align: center;
    border-bottom: 6px solid #30e3ca!important;}
    .w3-hover-light-grey:hover{
    	background-color: #30e3ca!important;
    	border-radius: 8px;
    	border-bottom: 6px solid #30e3ca!important;
    }
    .listing{
    	height: 200px;}
}
</style>

</head>
<body>
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- header 종료 -->

<div class="site-wrap">

<div class="site-mobile-menu">
<div class="site-mobile-menu-header">
<div class="site-mobile-menu-close mt-3">
<span class="icon-close2 js-menu-toggle"></span>
</div>
</div>
<div class="site-mobile-menu-body"></div><i class="fas fa-chalkboard-teacher"></i>
</div>


	<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(resources/images/아이.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row align-items-center justify-content-center text-center">
			
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
	
		<div class="site-section">
			<div class="container mb-5">
							
			
				<div class="member_container col-md-7 mb-5">
					<div class="member_img">
					<c:choose>
						<c:when test="${member.member_profile eq null}">
							<img class="member_image" alt="" src="resources/images/User_icon_BLACK-01.png" class="member_profile_img">							
							
						</c:when>
						<c:otherwise>
							<img class="member_image" alt="" src="resources/img/member/${member.member_profile}" class="member_profile_img">							
						</c:otherwise>
					</c:choose>
					</div>
					<div class="member_infomation" style="font-size: 1.5vw;">
						<c:set value="${member.member_regdate}" var="member_regdate" />
						<h2 class="font-weight-light text-primary">
									<b>회원 <span class="text-warning">정보</span></b>
								</h2>
						<div class="member_infomation_head">이름 : <div class="member_infomation_detail">${member.member_name}</div> </div>
						<div class="member_infomation_head">아이디 : <div class="member_infomation_detail">${member.member_id}</div></div>
						<div class="member_infomation_head">이메일 : <div class="member_infomation_detail">${member.member_email}</div> </div>
						<div class="member_infomation_head" >가입일 : <div class="member_infomation_detail"></div>${fn:substring(member_regdate,0,10)} </div>
					</div>
					
					<div class=" text-right mySchedule">
						<input type="button" value=" 일정보기 " class="btn btn-primary text-white"
						onclick="window.open('scheduleCalendar.do', 'calendar', 'width=700px,height=700px,toolbars=no,scrollbars=no'); return false;">
						<input type="button" value=" 정보수정 " class="btn btn text-white" style="background-color:#f89d13;" 
						onclick="location.href='memberDetail.do?email=${member.member_email}'">
					</div>
					
				</div>

				<div class="w3-row">
					<a href="javascript:void(0)" onclick="openCity(event, 'AllMyClass');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-border-aqua w3-col s3" style="width: 25%; font-size: 1.5vw">내모든강의</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyClass');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 25%;font-size: 1.5vw;">내강의보기</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyWant');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 25%;font-size: 1.5vw;">원해요보기</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyWishlist');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 25%;font-size: 1.5vw;">위시리스트</div>
					</a>
				</div>

				<div id="AllMyClass" class="container depa">    <!-- 내 수강 보기 탭 내용  -->
					<div class="container">
						<div class="row mb-5">
							<div class="col-md-7 text-left border-primary">
								<h2 class="font-weight-light text-primary">
									<b>모든 강의 <span class="text-warning">보기</span>
								</h2>
								<p class="color-black-opacity-5">MY LIST</p>
	
							</div>
						</div>
						<div class="row mt-5">
						<c:choose>
							<c:when test="${not empty inclassList}">
								<c:forEach items="${inclassList}" var="inclass">
									<c:choose>
										<c:when test="${inclass.class_termin eq 'N'}">
											<div class="col-lg-6">
												<div class="d-block d-md-flex listing">
													<a href="cdetail.do?class_seq=${inclass.seq}" class="img d-block"
														style="background-image: url('resources/img/class/${inclass.class_img}');"></a>
													<div class="lh-content">
														<span class="category">${inclass.class_creator_name}</span> 
														<span class="instructor_img"></span>
														<a href="cancelClass.do?seq=${inclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
														<h3>
															<a href="cdetail.do?class_seq=${inclass.seq}">${inclass.class_name}</a>
														</h3>
														<!-- 별 -->
														<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
														</div>
															<!-- <p class="teacherstar" style="float:left;"></p> -->
															<span class="review" >(${inclass.class_review_count} Reviews)</span>
														<!-- 별 -->
														<address>${inclass.class_area}</address>
													</div>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="col-lg-6">
												<div class="d-block d-md-flex listing">
													<a href="review.do?class_seq=${inclass.seq}" class="img d-block"
														style="background-image: url('resources/img/class/${inclass.class_img}') ; background-color:rgba(138,138,138,0.8);background-size:cover; background-blend-mode: saturation;">
														<div style="font-size: 20px; padding-left: 30px;padding-top: 50px;">폐강된 강의 입니다~<br> 강의평을 남기실수 <br>있습니다.</div>
														</a>
													<div class="lh-content">
														<span class="category">${inclass.class_creator_name}</span> 
														<span class="instructor_img"></span>
														<a href="cancelClass.do?seq=${inclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
														<h3>
															<a href="review.do?class_seq=${inclass.seq}">${inclass.class_name}</a>
														</h3>
														<!-- 별 -->
														<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
														</div>
															<!-- <p class="teacherstar" style="float:left;"></p> -->
															<span class="review" >(${inclass.class_review_count} Reviews)</span>
														<!-- 별 -->
														<address>${inclass.class_area}</address>
													</div>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="col-lg-6">
									<h2 class="font-weight-light text-primary">
										<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
									</h2>
								</div>
							</c:otherwise>
						</c:choose>
						</div>
					</div>
				</div>
				
				<div id="MyClass" class="container depa"  style="display: none">    <!-- 내 수강 보기 탭 내용  -->
					<div class="container">
						<div class="row mb-5">
							<div class="col-md-7 text-left border-primary">
								<h2 class="font-weight-light text-primary">
									<b>강의<span class="text-warning">보기</span>
								</h2>
								<p class="color-black-opacity-5">MY LIST</p>
	
							</div>
						</div>
						<div class="row mt-5">
							<c:choose>						
								<c:when test="${not empty inclassList}">
									<c:set var="i" value="1" />
									<c:forEach items="${inclassList}" var="inclass">
										<c:choose>
											<c:when test="${inclass.class_type eq 'C'}">
												<c:choose>
													<c:when test="${inclass.class_termin eq 'N'}">
														<div class="col-lg-6">
															<div class="d-block d-md-flex listing">
																<a href="cdetail.do?class_seq=${inclass.seq}" class="img d-block"
																	style="background-image: url('resources/img/class/${inclass.class_img}');"></a>
																<div class="lh-content">
																	<span class="category">${inclass.class_creator_name}</span> 
																	<span class="instructor_img"></span>
																	<a href="cancelClass.do?seq=${inclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
																	<h3>
																		<a href="cdetail.do?class_seq=${inclass.seq}">${inclass.class_name}</a>
																	</h3>
																	<!-- 별 -->
																	<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
																	</div>
																		<!-- <p class="teacherstar" style="float:left;"></p> -->
																		<span class="review" >(${inclass.class_review_count} Reviews)</span>
																	<!-- 별 -->
																	<address>${inclass.class_area}</address>
																</div>
															</div>
														</div>
													</c:when>
													<c:otherwise>
														<div class="col-lg-6">
															<div class="d-block d-md-flex listing">
																<a href="review.do?class_seq=${inclass.seq}" class="img d-block"
																	style="background-image: url('resources/img/class/${inclass.class_img}') ; background-color:rgba(138,138,138,0.8);background-size:cover; background-blend-mode: saturation;">
																	<div style="font-size: 20px; padding-left: 30px;padding-top: 50px;">폐강된 강의 입니다~<br> 강의평을 남기실수 <br>있습니다.</div>
																	</a>
																<div class="lh-content">
																	<span class="category">${inclass.class_creator_name}</span> 
																	<span class="instructor_img"></span>
																	<a href="cancelClass.do?seq=${inclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
																	<h3>
																		<a href="review.do?class_seq=${inclass.seq}">${inclass.class_name}</a>
																	</h3>
																	<!-- 별 -->
																	<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
																	</div>
																		<!-- <p class="teacherstar" style="float:left;"></p> -->
																		<span class="review" >(${inclass.class_review_count} Reviews)</span>
																	<!-- 별 -->
																	<address>${inclass.class_area}</address>
																</div>
															</div>
														</div>
													</c:otherwise>
												</c:choose>
	
												<c:set var="i" value="${i+1}" />
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${i == 1}">
										<div class="col-lg-6">
											<h2 class="font-weight-light text-primary">
												<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
											</h2>
										</div>
									</c:if>
								</c:when>
									
									<c:otherwise>
										<div class="col-lg-6">
											<h2 class="font-weight-light text-primary">
												<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
											</h2>
										</div>
									</c:otherwise>
								</c:choose>
						</div>
					</div>
				</div>

				<div id="MyWant" class="container depa" style="display: none">    <!-- 내 원해요 보기 탭 내용  -->
					<div class="container">
							<div class="row mb-5">
						<div class="col-md-7 text-left border-primary">
							<h2 class="font-weight-light text-primary">
								<b>원해요<span class="text-warning">보기</span>
							</h2>
							<p class="color-black-opacity-5">MY LIST</p>

						</div>
					</div>
					<div class="row mt-5">
						<c:choose>						
							<c:when test="${not empty inclassList}">
								<c:set var="i" value="1" />
								<c:forEach items="${inclassList}" var="inclass">
									<c:choose>
										<c:when test="${inclass.class_type == 'W'}">
											<c:choose>
												<c:when test="${inclass.class_termin eq 'N'}">
													<div class="col-lg-6">
														<div class="d-block d-md-flex listing">
															<a href="cdetail.do?class_seq=${inclass.seq}" class="img d-block"
																style="background-image: url('resources/img/class/${inclass.class_img}');"></a>
															<div class="lh-content">
																<span class="category">${inclass.class_creator_name}</span> 
																<span class="instructor_img"></span>
																<a href="cancelClass.do?seq=${inclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
																<h3>
																	<a href="review.do?class_seq=${inclass.seq}">${inclass.class_name}</a>
																</h3>
																<!-- 별 -->
																<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
																</div>
																	<!-- <p class="teacherstar" style="float:left;"></p> -->
																	<span class="review" > </span>
																<!-- 별 -->
																<address>${inclass.class_area}</address>
															</div>
														</div>
													</div>
												</c:when>
												<c:otherwise>
													<div class="col-lg-6">
														<div class="d-block d-md-flex listing">
															<a href="review.do?class_seq=${inclass.seq}" class="img d-block"
																style="background-image: url('resources/img/class/${inclass.class_img}') ; background-color:rgba(138,138,138,0.8);background-size:cover; background-blend-mode: saturation;">
																<div style="font-size: 20px; padding-left: 30px;padding-top: 50px;">폐강된 강의 입니다~<br>
																</a>
															<div class="lh-content">
																<span class="category">${inclass.class_creator_name}</span> 
																<span class="instructor_img"></span>
																<a href="cancelClass.do?seq=${inclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
																<h3>
																	<a href="review.do?class_seq=${inclass.seq}">${inclass.class_name}</a>
																</h3>
																<!-- 별 -->
																<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
																</div>
																	<!-- <p class="teacherstar" style="float:left;"></p> -->
																	<span class="review" > </span>
																<!-- 별 -->
																<address>${inclass.class_area}</address>
															</div>
														</div>
													</div>
												</c:otherwise>
											</c:choose>
											<c:set var="i" value="${i+1}" />
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${i == 1}">
										<div class="col-lg-6">
											<h2 class="font-weight-light text-primary">
												<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
											</h2>
										</div>
									</c:if>
								</c:when>
								
								<c:otherwise>
									<div class="col-lg-6">
										<h2 class="font-weight-light text-primary">
											<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
										</h2>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>


				<div id="MyWishlist" class="container depa" style="display: none">   <!-- 내 위시리스트 보기 탭 내용  -->
					<div class="container">
						<div class="row mb-5">
							<div class="col-md-7 text-left border-primary">
								<h2 class="font-weight-light text-primary">
									<b>찜목록<span class="text-warning">보기</span>
								</h2>
								<p class="color-black-opacity-5">MY LIST</p>
							</div>
						</div>
						<div class="row mt-5">
							<c:choose>						
								<c:when test="${not empty myWishList}">
									<c:set var="i" value="1" />
									<c:forEach items="${myWishList}" var="wishclass">
										<div class="col-lg-6">
											<div class="d-block d-md-flex listing">
												<a href="cdetail.do?class_seq=${wishclass.seq}" class="img d-block"
													style="background-image: url('resources/img/class/${wishclass.class_img}')"></a>
												<div class="lh-content">
													<span class="category">${wishclass.class_creator_name}</span> 
													<span class="instructor_img"></span>
													<a href="cancelWishlist.do?seq=${wishclass.seq}&email=${member.member_email}" class="bookmark" style="text-align: center;vertical-align: middle;"><span class="fas fa-trash-alt"></span></a>
													<h3>
														<a href="cdetail.do?seq=${wishclass.seq}">${wishclass.class_name}</a>
													</h3>
													<!-- 별 -->
													<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${wishclass.class_member_rating}" onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;">
													</div>
														<!-- <p class="teacherstar" style="float:left;"></p> -->
														<span class="review" ><c:if test="${wishclass.class_type eq 'C'}">(${wishclass.class_review_count} Reviews) </c:if></span>
													<!-- 별 -->
													<address>${wishclass.class_area}</address>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="col-lg-6">
										<h2 class="font-weight-light text-primary">
											<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
										</h2>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<script>
function openCity(evt, cityName) {
var i, x, tablinks;
x = document.getElementsByClassName("depa");
for (i = 0; i < x.length; i++) {
x[i].style.display = "none";
}
tablinks = document.getElementsByClassName("tablink");
for (i = 0; i < x.length; i++) {
tablinks[i].className = tablinks[i].className.replace(" w3-border-aqua", "");
}
document.getElementById(cityName).style.display = "block";
evt.currentTarget.firstElementChild.className += " w3-border-aqua";
}
</script>

<div>

<jsp:include page="footer.jsp" />

<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
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
</body>
</html>