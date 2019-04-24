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
<!-- 강사 상세보기 페이지 : 강사 프로필, 강사의 강의 리스트, 강사의 강의 후기 리스트 -->
<title>강사 상세보기</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">

<!--  상세보기 페이지 부트스트랩 &css -->


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
<!--  -->
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
						<img src="resources/images/강사1.jpg" alt="Image" class="img-fluid mb-3">
							${tDto.member_profile}
						</div>
						
					<!-- 강사 이름 -->
						<div class="user-name">
							<h3>${tDto.member_name}</h3>
						</div>
					
					<!-- 강사 별 // 홍민씨가 하기로 함-->
					<div class = "teacherstar" data-minority="${tDto.avg}" onclick="gogostar(this)">
					</div>
					
					
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
										aria-controls="nav-contact" aria-selected="false">Class Information</a>
									<a class="nav-item nav-link" id="nav-about-tab"
										data-toggle="tab" href="#nav-about" role="tab"
										aria-controls="nav-about" aria-selected="false">Review</a>
								</div>
								</nav>
								<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
									<div class="tab-pane fade show active" id="nav-home"
										role="tabpanel" aria-labelledby="nav-home-tab">
										${tDto.member_info}
									</div>
									<div class="tab-pane fade" id="nav-profile" role="tabpanel"
										aria-labelledby="nav-profile-tab">
										${tDto.member_info}
									</div>
									<div class="tab-pane fade" id="nav-contact" role="tabpanel"
										aria-labelledby="nav-contact-tab">
										<%-- ${clist[0].class_name} --%>
								<!-- 강의 목록 가져오기 -->
								
								<%-- <c:otherwise>
         						<c:forEach items="${clist}" var="dto">
            					<tr>
              					 <td><input type="checkbox" name="chk" value="${dto.seq}"/></td>
               					<td>${dto.seq}</td>
               					<td>${dto.id}</td>
               					<c:choose>
                 				<c:when test="${dto.delflag=='Y'}">
                  				<td>---삭제된 글입니다.---</td>
                  				</c:when>
                  				<c:otherwise>
                  				<td>
                  				<c:if test="${dto.depth!=0}">
                     			<c:forEach begin="0" end="${dto.depth}" step="1" >
                        		&nbsp;&nbsp;&nbsp;&nbsp;
                     			</c:forEach>
                  				</c:if>
                  				<jsp:setProperty property="arrowNbsp" name="util" value="${dto.depth}"/>
                     			<jsp:getProperty  property="arrowNbsp" name="util"/>
                     			<a href="detailboard.do?seq=${dto.seq}">${dto.title}</a>
                  				</td>
                  				</c:otherwise>
               					</c:choose>
               					<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd"/> </td>
               					<td>${dto.refer}</td>
               					<td>${dto.step}</td>
               					<td class="depth">${dto.depth}</td>
               					<td>${dto.readcount}</td>
               					<td>${dto.delflag}</td>
            					</tr>
        						</c:forEach>
      							</c:otherwise>
									 --%>
									</div>
									<div class="tab-pane fade" id="nav-about" role="tabpanel"
										aria-labelledby="nav-about-tab">
										${rDto[0].review_detail}</div>
								</div>

							</div>
						</div>
					</div>

























					<%-- <!-- 강사 이미지 -->
					<div class="container">
				
					
						<div class="user-image">
							${tDto.member_profile}
						</div>
						
					<!-- 강사 이름 -->
						<div class="user-name">
							<h3>${member.member_name}</h3>
						</div>

					<!-- nav 메뉴 tap  -->
						<ul class="navigation">
							<li class="active">
								<a data-toggle="tab" href="#information">
									<span>TOP</span></a>
							</li>
							<li class="active">
								<a data-toggle="tab" href="#settings"> 								
									<span>Introduction</span></a>
							</li>
							<li class="active">
								<a data-toggle="tab" href="#email">
									<span>Class Information</span></a>
							</li>
							<li class="active">
								<a data-toggle="tab" href="#events"> 
									<span>Review</span></a>
							</li>
						</ul>
									
									<!-- Tab변경시 내용 -->
									<div class="user-body">
										<div class="tab-content">
											<div id="information" class="tab-pane active">
												<h4>Account Information</h4>
											</div>
											<div id="settings" class="tab-pane">
												<h4>Settings</h4>
											</div>
											<div id="email" class="tab-pane">
												<h4>Send Message</h4>
											</div>
											<div id="events" class="tab-pane">
												<h4>Events</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
				
				
					

 --%>

					<%-- <!-- 강사 상세보기 페이지 값 시험으로 받아오기 -->
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
										</table> --%>
								
								
								
								
								</div>
							</div>
						</div>
					</div>

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