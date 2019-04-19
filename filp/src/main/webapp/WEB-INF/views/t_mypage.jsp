<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



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
<jsp:include page="header.jsp"/>
<!-- header 종료 -->

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





		<div class="site-section bg-white">

			<div class="container mb-5">


				<div class="w3-row">
					<a href="javascript:void(0)" onclick="openCity(event, 'AllMyClass');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-border-aqua w3-col s3" style="width: 20%; font-size: 1.5vw">내모든수강</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyClass');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 20%;font-size: 1.5vw;">내수강보기</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyStudy');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 20%;font-size: 1.5vw;">스터디보기</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyWant');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 20%;font-size: 1.5vw;">원해요보기</div>
					</a> <a href="javascript:void(0)" onclick="openCity(event, 'MyWishlist');">
						<div
							class="w3-col tablink w3-bottombar w3-hover-light-grey w3-padding w3-col s3" style="width: 20%;font-size: 1.5vw;">위시리스트</div>
					</a>
				</div>

				<div id="AllMyClass" class="container depa">    <!-- 내 수강 보기 탭 내용  -->
					<div class="container">
						<div class="row mb-5">
							<div class="col-md-7 text-left border-primary">
								<h2 class="font-weight-light text-primary">
									<b>내강의<span class="text-warning">보기</span>
								</h2>
								<p class="color-black-opacity-5">MY LIST</p>
	
							</div>
						</div>
						<div class="row mt-5">
						<c:choose>
						
							<c:when test="${not empty inclassList}">
								<c:set var="i" value="1" />
								<c:forEach items="${inclassList}" var="inclass">
<%-- 									<c:forEach begin="1" end="${fn:length(inclassList)}" var="j" step="1"> --%>
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${(i %2) ==1 } }"> --%>
											<div class="col-lg-6">
												<div class="d-block d-md-flex listing">
													<a href="#" class="img d-block"
														style="background-image: url('resources/images/img_4.jpg')"></a>
													<div class="lh-content">
														<span class="category">${inclass.class_creator_name}</span> 
														<span class="instructor_img"></span>
														<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>
														<h3>
															<a href="#">${inclass.class_name}</a>
														</h3>
														<!-- 별 -->
														<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)">
														</div>
															<!-- <p class="teacherstar" style="float:left;"></p> -->
															<span class="review" >(${inclass.class_review_count} Reviews)</span>
														<!-- 별 -->
														<address>${inclass.class_area}</address>
													</div>
												</div>
											</div>
<%-- 												<c:if test="${i%2==0}"> --%>
<!-- 														<br/> -->
<!-- <!-- 													</div><div class="col-lg-6"> -->
<%-- 												</c:if> --%>
<%-- 												<c:set var="i" value="${i+1}" /> --%>
<%-- 										</c:when> --%>
<%-- 										<c:otherwise> --%>
<!-- 											<div class="col-lg-6"> -->
<!-- 												<div class="d-block d-md-flex listing"> -->
<!-- 													<a href="#" class="img d-block" -->
<!-- 														style="background-image: url('resources/images/img_4.jpg')"></a> -->
<!-- 													<div class="lh-content"> -->
<%-- 														<span class="category">${inclass.class_creator_name}</span>  --%>
<!-- 														<span class="instructor_img">강사사진</span> -->
<!-- 														<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a> -->
<!-- 														<h3> -->
<%-- 															<a href="#">${inclass.class_name}</a> --%>
<!-- 														</h3> -->
<!-- 														별 -->
<%-- 														<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)"> --%>
<!-- 														</div> -->
<!-- 															<p class="teacherstar" style="float:left;"></p> -->
<%-- 															<span class="review" >(${inclass.class_review_count} Reviews)</span> --%>
<!-- 														별 -->
<%-- 														<address>${inclass.class_area}</address> --%>
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</div> -->
<%-- 											<c:set var="i" value="${i+1}" /> --%>
<%-- 										</c:otherwise> --%>
												
<%-- 									</c:choose> --%>
									
									</c:forEach>
<!-- 								</div> -->
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
									<b>내강의<span class="text-warning">보기</span>
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
												<div class="col-lg-6">
													<div class="d-block d-md-flex listing">
														<a href="#" class="img d-block"
															style="background-image: url('resources/images/img_4.jpg')"></a>
														<div class="lh-content">
															<span class="category">${inclass.class_creator_name}</span> 
															<span class="instructor_img"></span>
															<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>
															<h3>
																<a href="#">${inclass.class_name}</a>
															</h3>
															<!-- 별 -->
															<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)">
															</div>
																<!-- <p class="teacherstar" style="float:left;"></p> -->
																<span class="review" >(${inclass.class_review_count} Reviews)</span>
															<!-- 별 -->
															<address>${inclass.class_area}</address>
														</div>
													</div>
												</div>
	
												<c:set var="i" value="${i+1}" />
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
											<c:if test="${i == 1}">
												<div class="col-lg-6">
													<h2 class="font-weight-light text-primary">
														<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
													</h2>
												</div>
											</c:if>
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

				<div id="MyStudy" class="container depa" style="display: none">      <!-- 내 스터디 보기 탭 내용  -->
					<div class="container">
						<div class="row mb-5">
							<div class="col-md-7 text-left border-primary">
								<h2 class="font-weight-light text-primary">
									<b>스터디<span class="text-warning">보기</span></b>
								</h2>
								<p class="color-black-opacity-5">MY LIST</p>
	
							</div>
						</div>

						<div class="row mt-5">
							<c:choose>						
								<c:when test="${not empty inclassList}">
									<c:set var="i" value="1" />
									<c:forEach items="${inclassList}" var="inclass">
	<%-- 									<c:forEach begin="1" end="${fn:length(inclassList)}" var="j" step="1"> --%>
	<%-- 									<c:choose> --%>
	<%-- 										<c:when test="${(i %2) ==1 } }"> --%>
										<c:choose>
											<c:when test="${inclass.class_type eq 'S'}">
												<div class="col-lg-6">
													<div class="d-block d-md-flex listing">
														<a href="#" class="img d-block"
															style="background-image: url('resources/images/img_4.jpg')"></a>
														<div class="lh-content">
															<span class="category">${inclass.class_creator_name}</span> 
															<span class="instructor_img"></span>
															<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>
															<h3>
																<a href="#">${inclass.class_name}</a>
															</h3>
															<!-- 별 -->
															<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)">
															</div>
																<!-- <p class="teacherstar" style="float:left;"></p> -->
																<span class="review" >(${inclass.class_review_count} Reviews)</span>
															<!-- 별 -->
															<address>${inclass.class_area}</address>
														</div>
													</div>
												</div>
	
												<c:set var="i" value="${i+1}" />
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
											<c:if test="${i == 1}">
												<div class="col-lg-6">
													<h2 class="font-weight-light text-primary">
														<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
													</h2>
												</div>
											</c:if>
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
	<%-- 									<c:forEach begin="1" end="${fn:length(inclassList)}" var="j" step="1"> --%>
	<%-- 									<c:choose> --%>
	<%-- 										<c:when test="${(i %2) ==1 } }"> --%>
										<c:choose>
											<c:when test="${inclass.class_type == 'W'}">
												<div class="col-lg-6">
													<div class="d-block d-md-flex listing">
														<a href="#" class="img d-block"
															style="background-image: url('resources/images/img_4.jpg')"></a>
														<div class="lh-content">
															<span class="category">${inclass.class_creator_name}</span> 
															<span class="instructor_img"></span>
															<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>
															<h3>
																<a href="#">${inclass.class_name}</a>
															</h3>
															<!-- 별 -->
															<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${inclass.class_member_rating}" onclick="gogostar(this)">
															</div>
																<!-- <p class="teacherstar" style="float:left;"></p> -->
																<span class="review" >(${inclass.class_review_count} Reviews)</span>
															<!-- 별 -->
															<address>${inclass.class_area}</address>
														</div>
													</div>
												</div>
												<c:set var="i" value="${i+1}" />
												</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
												<c:if test="${i == 1}">
													<div class="col-lg-6">
														<h2 class="font-weight-light text-primary">
															<b>등록된 강의가 <span class="text-warning">없습니다</span></b>
														</h2>
													</div>
												</c:if>
											</c:forEach>
	<!-- 								</div> -->
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
								<c:when test="${not empty wishList}">
									<c:set var="i" value="1" />
									<c:forEach items="${wishList}" var="wishclass">
	<%-- 									<c:forEach begin="1" end="${fn:length(wishList)}" var="j" step="1"> --%>
	<%-- 									<c:choose> --%>
	<%-- 										<c:when test="${(i %2) ==1 } }"> --%>
												<div class="col-lg-6">
													<div class="d-block d-md-flex listing">
														<a href="#" class="img d-block"
															style="background-image: url('resources/images/img_4.jpg')"></a>
														<div class="lh-content">
															<span class="category">${wishclass.class_creator_name}</span> 
															<span class="instructor_img"></span>
															<a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>
															<h3>
																<a href="#">${wishclass.class_name}</a>
															</h3>
															<!-- 별 -->
															<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${wishclass.class_member_rating}" onclick="gogostar(this)">
															</div>
																<!-- <p class="teacherstar" style="float:left;"></p> -->
																<span class="review" >(${wishclass.class_review_count} Reviews)</span>
															<!-- 별 -->
															<address>${wishclass.class_area}</address>
														</div>
													</div>
												</div>
										</c:forEach>
	<!-- 								</div> -->
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


<%-- <p>${member.member_name}</p>
<p>${member.member_email}</p>
<p>${member.member_phone}</p>
<p>${member.member_email}</p>
<p>${member.member_email}</p>

	<ul class=”navnav-tabs”><!–nav/ nav-tab 클래스를 추가하면 탭스타일로 나타납니다.–>
		<li class=”active”><a href=“#tab1″ data-toggle=”tab” onclick="myclass(myclass)">내수강보기</a></li>
		<li><a href=“#tab2″ data-toggle=”tab” onclick="myclass(mystudy)">내스터디 보기</a></li><!–탭메뉴를 사용하기위해 data-toggle=”tab”을 지정해줍니다.–>
		<li><a href=”#tab3″ data-toggle=”tab” onclick="myclass(want)">원해요 보기</a></li>
		<li><a href=”#tab4″ data-toggle=”tab” onclick="myclass(wishlist)">위시리스트 보기</a></li>
	</ul>

	<div class=”tab-content”>
		<!–탭내용을 보여주는 곳에 ‘tab-content’ 클래스를걸어줍니다–>
		<div class=”tab-pane active” id=“tab1″>
			<!–nav-tab부분 링크부분과 탭내용을 보여줄 id를 맞춰줍니다–>
			<p>내수강보기 부분입니다.</p>
			<c:forEach var="inclass" items="allInclass" >
				<p>${inclass.class_name}</p>
				<p>${inclass.regdate}</p>
				<p>${inclass.class_area}</p>
				<p>${inclass.class_depa}</p>
				<p>${inclass.class_sd}</p>
				<p>${inclass.class_instructor}</p>
				<p>${inclass.class_termin}</p>
				<p>${inclass.class_participation}</p>
				<p>${inclass.class_detail}</p>
				<p>${inclass.class_img}</p>
				<p>${inclass.class_participation}</p>
				<p>${inclass.class_now_participation}</p>
				<p>${inclass.class_rating}</p>
				<p>${inclass.d_day}</p>
			</c:forEach>
			
		</div>
		<div class=”tab-pane” id=“tab2″>
			<p>내스터디 보기 부분입니다.</p>
			<c:forEach var="study" items="allStudyList" >
				<p>${study.class_name}</p>
			</c:forEach>
		</div>
		<div class=”tab-pane” id=“tab3″>
			<p>내원해요 보기 부분입니다.</p>
			<c:forEach var="want" items="allwantList" >
				<p>${want.class_name}</p>
			</c:forEach>
		</div>
		<div class=”tab-pane” id=“tab4″>
			<p>내위시리스트 보기 부분입니다.</p>
			<c:forEach var="wishlist" items="allwishlist" >
				<p>${wishlist.class_name}</p>
			</c:forEach>
		</div>
	</div> --%>

</body>
</html>