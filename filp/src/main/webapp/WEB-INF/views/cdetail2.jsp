<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
#nav a{
	   width: 100%;
	   margin: 0 15px;
	   color: gray;
}
.tapped{
		position : sticky;
 	   	top: 0px; 
}



#nav > ul{background-color: white;
}
#nav ul li{
		width: 24%;
		display: inline-block; text-align: center; font-size: 20px; font-weight: bold;
		background-color: white;
/*     position: fixed; */
}
ol, ul {
    list-style: none;
    margin:0px; padding:0px;
}
.actived{background-color: gray;color: #30e3ca !important;}
.actived a{color: #30e3ca !important;border-bottom: 3px solid black;}
div[id^=nav]{padding: 0 25px;
}
.inside_container{background-color: white; padding: 0;}
.side_container{
 	display:inline-block; 
 	background-color: #bbd8e9;
/* /* 	position: fixed; */ */
/* 	top: 50px; */
/* 	left:30%; */
/* 	float:right; */
}
.side_container hr{
margin: 2px;
}
/* 강의 제목 */
.title{ 
font-size : 25px; font-weight : bold; text-align: center; 
}
/*수평선*/
hr{
background-color : #30E3CA;
color : #30E3CA;

}
</style>
<!-------------------------------------->
</head>
<body>
<!-- #f8f9fa -->
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
		
		<div class="container-fluid" style="display: inline-block;">
<!-- 			<div class="row justify-content-center mb-5"> -->
<!-- 			</div> -->
			<div class="row-fluid">
			<div class="row justify-content-center">
				<div class="col-md-7 mb-7" data-aos="fade">
					<!-------------------------------------------------------------------------------------------------->


					<!-- 강의 이미지 -->

					<div class="container">

						<!-- 강의 이름 -->

						<!-- 강사 별 --->
						<div class="mb-0 teacherstar" data-minority="${cDto.class_member_rating}"
							onclick="gogostar(this)"></div>

						<!-- 강사 상세보기와 같은 부트스트랩 적용 -->
						<!-- 탭 이동 메뉴 -->
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-xs-12 inside_container">
								<div class="class_image row justify-content-center">
									<img src="resources/img/class/${cDto.class_img}" alt="Image"
										class="img-fluid mb-3">
								</div>
								<div id="nav">
									<ul>
										<li class="actived"><a href="#" onclick="moveNav('1')">TOP</a></li>
										<li><a href="#" onclick="moveNav('2')">Teacher</a></li>
<!-- 										<li><a href="#3">Introduction</a></li> -->
										<li><a href="#" onclick="moveNav('3')">Information </a></li>
										<li><a href="#" onclick="moveNav('4')">Review</a></li>
									</ul>
								</div>
									<!-- top 탭의 내용 -->
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="target" id="nav1">
										<br><span class="title">${cDto.class_name}</span><br></br> 
											<span>
												${cDto.class_info} </span><br><br> 
										<table style="text-align:center;">
											<tr>
												<td><img src="resources/images/placeholder.png"><br>${cDto.class_area}</td>
												<td><img src="resources/images/time.png"><br>${cDto.class_time}분</td>
												<td><img src="resources/images/won.png"><br>${cDto.class_price}원</td>
											</tr>
										</table>
											
										</div>
										
										
										<hr>
										<!-- Teacher 탭의 내용 -->
										<div class="target" id="nav2">
											<span>강사님 소개 </br> ${cDto.class_creator_name}
											</span> <span></span>
											<!-- <p>보내는 고동을 같은 풀밭에 것이다. 무엇을 가지에 얼마나 인류의 봄바람이다. 맺어, 원질이 구하지 예가 유소년에게서 새가 어디 풍부하게 광야에서 것이다. 소담스러운 인간에 들어 봄바람을 있으며, 유소년에게서 것이다. 얼음 기쁘며, 웅대한 그림자는 아름다우냐? 가슴에 꽃이 이것을 반짝이는 봄바람이다. 얼마나 관현악이며, 열락의 뼈 보이는 옷을 가치를 때문이다. 소담스러운 피고, 끝에 뿐이다. 가는 우리는 위하여서, 가슴이 청춘의 얼음 가진 이것이다. 속잎나고, 따뜻한 남는 때문이다.
												속잎나고, 우리 봄날의 사막이다. 청춘에서만 청춘의 무엇을 힘있다. 그들에게 든 청춘의 창공에 이성은 없는 우리 우는 소리다.이것은 황금시대다. 하는 용감하고 우리의 쓸쓸하랴? 소담스러운 그들의 우리 반짝이는 못하다 현저하게 바로 것이다. 광야에서 낙원을 곳이 열매를 시들어 이상 청춘의 청춘이 이것이다. 동산에는 눈이 넣는 교향악이다. 무한한 우리는 커다란 싸인 운다. 이 꾸며 뜨고, 사랑의 오직 끓는다.
												
												가는 있는 대고, 우는 인생에 오직 밥을 몸이 이것이다. 인간은 사람은 그들에게 힘차게 대한 인생에 수 갑 우리의 것이다. 지혜는 소리다.이것은 뛰노는 같으며, 이것을 모래뿐일 것이다. 대고, 불어 생명을 끝까지 황금시대를 굳세게 하는 있는가? 넣는 타오르고 구하지 우리는 있으랴? 긴지라 풍부하게 무엇을 인생의 구할 청춘이 튼튼하며, 피고, 운다. 그들은 불러 찾아 있는 그들을 날카로우나 가슴이 것이다. 우리 같은 날카로우나 무엇을 설레는 피고 소리다.이것은 아름다우냐? 없는 석가는 위하여 같으며, 운다.</p>

	 -->									</div>
										<hr>


										<!-- class information 탭의 내용 -->
										<div class="target" id="nav3">
											<span>강의 소개 : ${cDto.class_detail}</span></br>
											<span>강의 지역 : ${cDto.class_area}</span></br> 
											<span>강의 가격 : ${cDto.class_price}원 </span></br>
											<span>강의 시작일 : ${cDto.class_sd}</span></br> 
											<span>강의 종료일 : ${cDto.class_cd}</span></br> 
											<span>강의 시작시간 : ${cDto.class_starttime}</span></br> 
											<span>강의 시간 :${cDto.class_time}분</span></br>
											<span>현재 강의 참가중인 인원 :${cDto.class_now_participation}명</span></br>
											<span>시작까지 남은 디데이 :${cDto.class_d_day}일</span>
										<!-- 	<p>보내는 고동을 같은 풀밭에 것이다. 무엇을 가지에 얼마나 인류의 봄바람이다. 맺어, 원질이 구하지 예가 유소년에게서 새가 어디 풍부하게 광야에서 것이다. 소담스러운 인간에 들어 봄바람을 있으며, 유소년에게서 것이다. 얼음 기쁘며, 웅대한 그림자는 아름다우냐? 가슴에 꽃이 이것을 반짝이는 봄바람이다. 얼마나 관현악이며, 열락의 뼈 보이는 옷을 가치를 때문이다. 소담스러운 피고, 끝에 뿐이다. 가는 우리는 위하여서, 가슴이 청춘의 얼음 가진 이것이다. 속잎나고, 따뜻한 남는 때문이다.

												속잎나고, 우리 봄날의 사막이다. 청춘에서만 청춘의 무엇을 힘있다. 그들에게 든 청춘의 창공에 이성은 없는 우리 우는 소리다.이것은 황금시대다. 하는 용감하고 우리의 쓸쓸하랴? 소담스러운 그들의 우리 반짝이는 못하다 현저하게 바로 것이다. 광야에서 낙원을 곳이 열매를 시들어 이상 청춘의 청춘이 이것이다. 동산에는 눈이 넣는 교향악이다. 무한한 우리는 커다란 싸인 운다. 이 꾸며 뜨고, 사랑의 오직 끓는다.
												
												가는 있는 대고, 우는 인생에 오직 밥을 몸이 이것이다. 인간은 사람은 그들에게 힘차게 대한 인생에 수 갑 우리의 것이다. 지혜는 소리다.이것은 뛰노는 같으며, 이것을 모래뿐일 것이다. 대고, 불어 생명을 끝까지 황금시대를 굳세게 하는 있는가? 넣는 타오르고 구하지 우리는 있으랴? 긴지라 풍부하게 무엇을 인생의 구할 청춘이 튼튼하며, 피고, 운다. 그들은 불러 찾아 있는 그들을 날카로우나 가슴이 것이다. 우리 같은 날카로우나 무엇을 설레는 피고 소리다.이것은 아름다우냐? 없는 석가는 위하여 같으며, 운다.</p>
 -->
										</div>
										<hr>

										<!-- review 탭의 내용 -->
										<div class="target" id="nav4">
											<!-- 후기 목록 가져오기 -->
											<table>
												<c:forEach items="${rDto}" var="reviewdto">
													<tr>
														<td>${reviewdto.review_detail}<br><br></td>
													</tr>
												</c:forEach>
											</table>
											
										<!-- 	<p>보내는 고동을 같은 풀밭에 것이다. 무엇을 가지에 얼마나 인류의 봄바람이다. 맺어, 원질이 구하지 예가 유소년에게서 새가 어디 풍부하게 광야에서 것이다. 소담스러운 인간에 들어 봄바람을 있으며, 유소년에게서 것이다. 얼음 기쁘며, 웅대한 그림자는 아름다우냐? 가슴에 꽃이 이것을 반짝이는 봄바람이다. 얼마나 관현악이며, 열락의 뼈 보이는 옷을 가치를 때문이다. 소담스러운 피고, 끝에 뿐이다. 가는 우리는 위하여서, 가슴이 청춘의 얼음 가진 이것이다. 속잎나고, 따뜻한 남는 때문이다.

												속잎나고, 우리 봄날의 사막이다. 청춘에서만 청춘의 무엇을 힘있다. 그들에게 든 청춘의 창공에 이성은 없는 우리 우는 소리다.이것은 황금시대다. 하는 용감하고 우리의 쓸쓸하랴? 소담스러운 그들의 우리 반짝이는 못하다 현저하게 바로 것이다. 광야에서 낙원을 곳이 열매를 시들어 이상 청춘의 청춘이 이것이다. 동산에는 눈이 넣는 교향악이다. 무한한 우리는 커다란 싸인 운다. 이 꾸며 뜨고, 사랑의 오직 끓는다.
												
												가는 있는 대고, 우는 인생에 오직 밥을 몸이 이것이다. 인간은 사람은 그들에게 힘차게 대한 인생에 수 갑 우리의 것이다. 지혜는 소리다.이것은 뛰노는 같으며, 이것을 모래뿐일 것이다. 대고, 불어 생명을 끝까지 황금시대를 굳세게 하는 있는가? 넣는 타오르고 구하지 우리는 있으랴? 긴지라 풍부하게 무엇을 인생의 구할 청춘이 튼튼하며, 피고, 운다. 그들은 불러 찾아 있는 그들을 날카로우나 가슴이 것이다. 우리 같은 날카로우나 무엇을 설레는 피고 소리다.이것은 아름다우냐? 없는 석가는 위하여 같으며, 운다.</p>

 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	

			<!-- footer시작 -->
				
				</div>
				<div class="side_container col-md-2 mb-2">
					위치 : ${cDto.class_area}<hr>
					<c:set value="${cDto.class_week}" var="class_week"/><br>
					요일:<c:forEach items="${fn:split(class_week,'|')}" var="week">
						<button class="btn btn-danger">
						<c:if test="${week==1}">일</c:if>
						<c:if test="${week==2}">월</c:if>
						<c:if test="${week==3}">화</c:if>
						<c:if test="${week==4}">수</c:if>
						<c:if test="${week==5}">목</c:if>
						<c:if test="${week==6}">금</c:if>
						<c:if test="${week==7}">토</c:if>
						</button>
					</c:forEach><hr>
					<c:set value="${cDto.class_sd}" var="class_sd"/>
					<c:set value="${cDto.class_cd}" var="class_cd"/>
					일자 : ${fn:substring(class_sd,0,10)} <c:if test="${cDto.class_type eq 'C'}"> ~ ${fn:substring(class_cd,0,10)}</c:if><hr>
					강의시간 : ${cDto.class_time}분<hr>
					강의 시작일 : ${cDto.class_starttime}<hr>
					참가 인원 : ${cDto.class_participation}명<hr>
					금액 : ${cDto.class_price}원<hr>
					<div class="col-md-12">
						<button class="btn center-block py-2 px-4"  style="margin-top: 5px;width: 100%;"
						onclick="">gogogo</button>
               		</div>
				</div>
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
<script type="text/javascript">
$('#nav > ul > li > a').on('click', function(event) {
    $(this).parent().parent().find('li').removeClass('actived');
    $(this).parent().addClass('actived');
});

$(window).on('scroll',function() {		
       if($(window).scrollTop() >= $('#nav').offset().top) {
         $('#nav').addClass('tapped');
       }else{
    	   $('#nav').removeClass('tapped');
       }
    $('.target').each(function() {
        if(($(window).scrollTop()+51) >= $(this).offset().top) {
            var id = $(this).attr('id')
            var num = id.substring(3,4);
            $('#nav > ul > li').removeClass('actived');
            $('#nav ul li').eq(num-1).addClass('actived');
//             $('#nav > ul > li > a[href=#'+ id +']').addClass('actived');
        }
    });
});
function moveNav(seq) {
	var offset = $("#nav" + seq).offset();
	$('html, body').animate({scrollTop : (offset.top-51)}, 100);
// 	var navScroll = $("#nav" + seq);
// 	navScroll.offset({top:400});
// 	$('html, body').animate({scrollTop : offset.top}, 400);
}
</script>

</body>
</html>