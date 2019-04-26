<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 강의 상세보기 페이지 : 수업 설명, 강의 평점, 현재 참여 중인 인원, 디데이 -->
<title>강의 상세보기</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
	
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
<link rel="stylesheet" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">

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
/* .info{
	border:2px solid #000;
	position: fixed; 
	right: 50%; 
	top: 180px; 
	margin-right: -615px;
	text-align:center;
	width:70px;
	border-radius: 8px;
	-webkit-border-radius: 8px;
 }
.floating div:nth-child(1){
   border:2px solid #ff3535;
   border-radius: 8px;
}
.floating div:nth-child(2){
   border:2px solid #ff3535;
   border-radius: 8px;
}
.floating  div:nth-child(3){
   border:2px solid #ff3535;
   border-radius: 8px;
} */
</style>
<!-------------------------------------->
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


	<div class="site-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						강의<span class="text-warning">상세보기</span>
					</h2>
					<p class="color-black-opacity-5">Class&amp;Detail</p>
				</div>
			</div>

			<div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">
					<!-------------------------------------------------------------------------------------------------->


					<!-- 강의 이미지 -->
				
				<div class="container">
						<div class="user-image">
							<img src="resources/images/3.jpg" alt="Image"
								class="img-fluid mb-3"> ${clist.class_img}
						</div>
					
					<!-- 강사 상세보기와 같은 부트스트랩 적용 -->
					 <!-- 탭 이동 메뉴 -->
					<div class="container">
							<div class="row">
								<div class="col-xs-12 ">
									<nav>
									<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
										<a class="nav-item nav-link active" id="nav-home-tab"
											data-toggle="tab" href="#nav-home" role="tab"
											aria-controls="nav-home" aria-selected="true">TOP</a> <a
											class="nav-item nav-link" id="nav-profile-tab"
											data-toggle="tab" href="#nav-profile" role="tab"
											aria-controls="nav-profile" aria-selected="false">Introduction</a>
										<a class="nav-item nav-link" id="nav-contact-tab"
											data-toggle="tab" href="#nav-contact" role="tab"
											aria-controls="nav-contact" aria-selected="false">Class
											Information</a>
										<!-- <a class="nav-item nav-link" id="nav-about-tab"
										data-toggle="tab" href="#nav-about" role="tab"
										aria-controls="nav-about" aria-selected="false">Review</a> 
										
										#강의 상세보기 쿼리에 리뷰 디테일 없음 -->
									</div>
									</nav>
									<!-- top 탭의 내용 -->
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home"
											role="tabpanel" aria-labelledby="nav-home-tab">
											${cDto.class_name}</div>
										<!-- introduction 탭의 내용 -->
										<div class="tab-pane fade" id="nav-profile" role="tabpanel"
											aria-labelledby="nav-profile-tab">${cDto.class_info}</div>
										<!-- class information 탭의 내용 -->
										<div class="tab-pane fade" id="nav-contact" role="tabpanel"
											aria-labelledby="nav-contact-tab">
											<%-- 테스트 값 나오나 하나만 받아보기 ${clist[0].class_name} --%>
											<!-- 강의 상세보기 가져오기 -->
											<table>
												<tr>
													<td>${cDto.class_name}</td>
												</tr>
											</table>
										</div>
										<!-- floating메뉴 -->
										<div class="info">
											<ul>
												<li class="area">${cDto.class_area}</li>
												<li class="hour">${cDto.class_time}</li>
												<li class="price">${cDto.class_price}</li>
												<li class="participation">${cDto.class_now_participation}</li>
												<li class="d-day">${cDto.class_d_day}</li>
											</ul>
										</div>

										<div class="class_detail detail_sec_bor" id="tutorinfo">
											<div class="select01" id="tutor">
												<div class="cert">
													<ul>
														<li class="com">${cDto.class_detail}</li>
													</ul>
												</div>
											</div>


											<!-- 탈잉 메뉴 -->


											<%-- <div class="class_price" id="class_price" style="position : relative; top:0px; left:0px;">
					
					
					
					<div id="class_navi" class="class_navi" style="left: 0px">
					<ul>
						<li>
							<a href="#top" class="on" id="top">Top</a>
						</li>
						<li>
							<a href="#Introduction" class="on" id="Introduction">Introduction</a>
						</li>
						<li>
							<a href="#Class Information" class="on" id="Class Information">Class Information</a>
						</li>
					</ul>
					</div>
					
					<div class="class_detail" id="top">
					<div class="class_name">
					<div class="tutor_img">
						<a href="resources/images/3.jpg" target="blank"></a>
					</div>
					
					<div class="class_title">
						<div class="title">${cDto.class_name}</div>
						</div>
					</div>
					
						
						<!-- 별점 -->
						
						
						<div class="info">
						<ul>
							<li class="area">${cDto.class_area}</li>
							<li class="hour">${cDto.class_time}</li>
							<li class="participation">${cDto.class_participation}</li>
							<li class="d-day">${cDto.class_d_day}</li>
						</ul>
						</div>
						
						<div class="class_detail detail_sec_bor" id="tutorinfo">
							<div class="select01" id="tutor">
							<h1>강사정보</h1>
							<div class="cert">
								<ul>
									<li class="com">${cDto.class_info}</li>
								</ul>
							</div>
							</div>
						<script>
							function display(id, val) {
								if(val == 1){
								document.getElementById(id).style.display="none"
								document.getElementById(id+'Full').style.display="block";
								document.getElementById(id+'Open').style.display="none";
								document.getElementById(id+'Close').style.display="block";
							
								}else{
									document.getElementById(id).style.display="block"
									document.getElementById(id+'Full').style.display="block";
									document.getElementById(id+'Open').style.display="none";
									document.getElementById(id+'Close').style.display="block";
								}
							}
						
						</script> --%>

											<!-- ---------------------------------------------------------------------------------------- -->


											<%-- <!-- review 탭의 내용 -->
									<div class="tab-pane fade" id="nav-about" role="tabpanel"
										aria-labelledby="nav-about-tab">
										값 나오나 하나만 받아보기 ${rDto[0].review_detail}
										<!-- 후기 목록 가져오기 -->
										<table>
											
												<tr>
													<td>${rDto.review_detail}</td>
												</tr>
										
										</table>
									</div> --%>
										</div>
									</div>
								</div>
							</div>


							<!-- 임시로 값 받아오기--> <%-- ${cDto[0].class_name}
${cDto[0].class_info}
<fmt:formatDate value="${cDto[0].regdate}" pattern="yyyyMMdd"/>
${cDto[0].class_area}
${cDto[0].class_depa}
<fmt:formatDate value="${cDto[0].class_sd}" pattern="yyyyMMdd"/> 
<fmt:formatDate value="${cDto[0].class_cd}" pattern="yyyyMMdd"/>
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
${cDto[0].class_d_day} --%>




			<!-- footer시작 -->
				
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