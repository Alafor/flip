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
						<div class="class_image">
							<img src="resources/images/3.jpg" alt="Image"
								class="img-fluid mb-3"> ${cDto.class_img}
						</div>

						<!-- 강의 이름 -->
						<div class="class_name">
							<h3>${cDto.class_name}</h3>
						</div>

						<!-- 강사 별 --->
						<div class="mb-0 teacherstar" data-minority="${tDto.avg}"
							onclick="gogostar(this)"></div>

						<!-- 강사 상세보기와 같은 부트스트랩 적용 -->
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
											aria-controls="nav-profile" aria-selected="false">Teacher
											Introduction</a> <a class="nav-item nav-link"
											id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
											role="tab" aria-controls="nav-contact" aria-selected="false">Class
											Information </a> <a class="nav-item nav-link" id="nav-about-tab"
											data-toggle="tab" href="#nav-about" role="tab"
											aria-controls="nav-about" aria-selected="false">Review</a>
									</div>
									</nav>
									<!-- top 탭의 내용 -->
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="tab-pane fade show active" id="nav-home"
											role="tabpanel" aria-labelledby="nav-home-tab">
											<span>강의명 : ${cDto.class_name}</span></br> <span>강의 소개
												:${cDto.class_info} </span></br> <span>강사님 :
												${cDto.class_creator_name}</span></br> <span>지역 :
												${cDto.class_area}</span></br> <span>가격 : ${cDto.class_price}원</span>
										</div>
										<!-- Teacher 탭의 내용 -->
										<div class="tab-pane fade" id="nav-profile" role="tabpanel"
											aria-labelledby="nav-profile-tab">
											<span>강사님 소개 </br> ${cDto.class_creator_name}
											</span> <span></span>
										</div>


										<!-- class information 탭의 내용 -->
										<div class="tab-pane fade" id="nav-contact" role="tabpanel"
											aria-labelledby="nav-contact-tab">
											<span>강의 소개 : ${cDto.class_detail}</span></br>
											<span>강의 지역 : ${cDto.class_area}</span></br> 
											<span>강의 가격 : ${cDto.class_price}원 </span></br>
											<span>강의 시작일 : ${cDto.class_sd}</span></br> 
											<span>강의 종료일 : ${cDto.class_cd}</span></br> 
											<span>강의 시작시간 : ${cDto.class_starttime}</span></br> 
											<span>강의 시간 :${cDto.class_time}분</span></br>
											<span>현재 강의 참가중인 인원 :${cDto.class_now_participation}명</span></br>
											<span>시작까지 남은 디데이 :${cDto.class_d_day}일</span>
										</div>

										<!-- review 탭의 내용 -->
										<div class="tab-pane fade" id="nav-about" role="tabpanel"
											aria-labelledby="nav-about-tab">
											<!-- 후기 목록 가져오기 -->
											<table>
												<c:forEach items="${rDto}" var="reviewdto">
													<tr>
														<td>${reviewdto.review_detail}</td>
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