<%@page import="com.hk.flip.dtos.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<%MemberDto memberDto= (MemberDto)request.getSession().getAttribute("logInMember"); %>

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
<script type="text/javascript">
function registClass(seq) {
	var class_type = $('input[name=class_type]').val();
	var member_type = $('input[name=member_type]').val();
	var class_participation = $('input[name=class_participation]').val()*1;
	var class_now_participation = $('input[name=class_now_participation]').val()*1;
	if(class_participation<=class_now_participation){
		alert(class_participation+class_now_participation);
		alert('신청 인원이 초과되었습니다');
		return false;
	}
	if(member_type == null){
		alert('로그인 후 신청하실수 있습니다');
		return false;
	}else if(class_type=='C') {
		if(member_type != 'S') {
			alert('강의를 신청하실수 없습니다');
			return false;
		}
	}else if(class_type=='S') {
		if(member_type !='S') {
			alert('강의를 신청하실수 없습니다');
			return false;
		}
	}else {
		if(member_type==('T')) {
			alert('강의를 신청하실수 없습니다');
			return false;
		}
	}
return ajaxChk(seq);
	
}
function ajaxChk(seq) {
	$.ajax({

	    url: "chkclasstime.do", // 클라이언트가 요청을 보낼 서버의 URL 주소

	    data: { "seq":seq},                // HTTP 요청과 함께 서버로 보낼 데이터

	    method: "post",                             // HTTP 요청 방식(GET, POST)

	    dataType: "json",                         // 서버에서 보내줄 데이터의 타입
	    
	    success : function(data) {
	    	rst =data["rst"];
	    	if(rst=="개설가능"){
	    		$('#regist_class').submit();
	    	}else{
	    		alert(rst);
	    		
	    		return false;
	    	}
	    },
	    error: function(data,status,xhr){
		alert("통신실패로 인한 수강신청 실패 입니다.");
		return false;
		}
	});
}
</script>
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
    line-height: 25px;
    border: 1px solid #ddd;
    border-top:5px solid #30E3CA;
    border-top-left-radius:8px;
    border-top-right-radius:8px;
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
 	   	z-index: 99;
}


#nav{border-bottom: 1px solid gray;background-color: white;}
#nav > ul{background-color: white;
}
#nav ul li{
		width: 24%;
		display: inline-block; text-align: center; font-size: 20px; font-weight: bold;
		background-color: white;
		padding-top: 10px;
		
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
 	border-radius: 10px;
 	font-size: 16px;
 	border: 2px solid #ccc;
 	background-color: white;
/*  	position: fixed; */
/* 	top: 50px; */
/* 	left:30%; */
/* 	float:right; */
}
.side_container hr{
margin: 2px;
}
/* 강의 제목 */
.title{ 
font-size : 25px; font-weight : bold; margin-bottom: 15px;
}
/*수평선*/
hr{
background-color : #30E3CA;
color : #30E3CA;

}
.site-section{padding-top: 32px;}
.side_container_tapped{position: fixed; right: 12.5%; top:50px;}
.detail_content{
    	display: inline-block;
    	
    	text-align: center;
    }
.detail_head{font-size: 16px;border-bottom: 1px solid #ced4da;margin-bottom: 5px;}
.nav1_icon{display: inline-block;
	text-align: center;}
.member_image {
    width: 150px;
    height:150px;
    object-fit: cover;
    border-radius: 50%;
    margin-top: 10px;
    }
.review_container{
	margin-top: 30px;
	font-size: 14px;
	border: 2px solid #30e3ca;
    border-radius: 20px;
    padding: 15px;
}
.review_img {
    width:30px;
    height:30px;
    object-fit: cover;
    border-radius: 50%;
    margin-bottom: 10px;
    margin-right: 10px;
    
    }
.review_name {
	   display: inline-block;
	   margin-right: 10px;
    }
.review_content{
	
    }
    
</style>
<!-------------------------------------->
</head>
<body>
<%if(memberDto != null){
String member_type= memberDto.getMember_type(); %>
<input name="member_type" type="hidden" value="<%=member_type%>">
<%}%>
<input name="class_now_participation" type="hidden" value="${cDto.class_now_participation}">
<input name="class_participation" type="hidden" value="${cDto.class_participation}">
<c:set value="${fn:substring(cDto.class_starttime,0,2)}" var="class_time_H"/>
<c:set value="${fn:substring(cDto.class_starttime,2,5)}" var="class_time_M"/>

<c:set value="${cDto.class_time mod 60}" var="class_time_m"/>
<fmt:parseNumber var="class_time_h" value="${(cDto.class_time-class_time_m)/60}" integerOnly="true" />
<c:set value="${class_time_M+ class_time_m}" var="class_time_mm"/>
<c:set value="${class_time_mm mod 60}" var="class_time_MM"/>
<fmt:parseNumber var="class_time_hh" value="${(class_time_mm-class_time_MM)/60}" integerOnly="true" />
<c:set value="${class_time_h+class_time_hh+class_time_H}" var="class_time_HH"/>

<input name="class_type" type="hidden" value="${cDto.class_type}">
<!-- #f8f9fa -->
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
      <div class="site-mobile-menu-body"></div>
    </div>
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


	<div class="site-section bg-white">
		<div class="row mb-5">
				<div class="col-md-10 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						강의<span class="text-warning">등록</span>
					</h2>
					<p class="color-black-opacity-5">Lecture&amp;Registration</p>
				</div>
			</div>
		<div class="container-fluid" style="display: inline-block;">
<!-- 			<div class="row justify-content-center mb-5"> -->
<!-- 			</div> -->
			<div class="row-fluid">
			<div class="row justify-content-center">
				<div class="col-md-6 mb-6" data-aos="fade">
					<!-------------------------------------------------------------------------------------------------->


					<!-- 강의 이미지 -->

					<div class="container">

						<!-- 강의 이름 -->

						<!-- 강사 별 --->

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
										<c:if test="${cDto.class_type eq 'C'}">
										<li><a href="#" onclick="moveNav('4')">Review</a></li>
										</c:if>
									</ul>
									
								</div>
									<!-- top 탭의 내용 -->
									<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
										<div class="target" id="nav1">
										<br><div class="row">
												<div class="col-md-8">
													<div class="title">${cDto.class_name}</div>	 
													${cDto.class_info}
												</div>
												<div class="col-md-4">
													<div class="nav1_icon"><img src="resources/images/placeholder.png"><br>${cDto.class_area}</div>
													<div class="nav1_icon"><img src="resources/images/time.png"><br>${cDto.class_time}분</div>
													<div class="nav1_icon"><img src="resources/images/won.png"><br>${cDto.class_price}원</div>
													<div class="nav1_icon" ><img src="resources/images/education.png"><br>${cDto.class_now_participation}/${cDto.class_participation}명</div>
												</div>
											</div>
										</div>
										
										
										<hr>
										<!-- Teacher 탭의 내용 -->
										<div class="target" id="nav2">
											<c:if test="${cDto.class_type eq 'C'}"><span><b>강사님 소개 </b></br></br></c:if> 
											<c:if test="${cDto.class_type eq 'W'}"><span><b>강의 리더 </b></br></br></c:if> 
											<c:if test="${cDto.class_type eq 'S'}"><span><b>스터디 리더 </b></br></br></c:if> 
											</span> 
											<div class="row">
												<div class="col-md-3 center-block">
													<div style="height: 160px;text-align:center;">
														<img style="margin-left: auto;margin-right:auto;display: inline-block;" class="member_image" alt="강사이미지" src="resources/img/member/${cDto.profile_img}">
													</div>
													<div class="" style="padding-top: 10px; text-align: center;margin-top: 10px;">${cDto.class_creator_name}</div>
													<div style="text-align: center;">
														<c:if test="${cDto.class_type eq 'C'}"><div class="mb-0 teacherstar" data-minority="${cDto.class_member_rating}"
															onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;"></div>(${cDto.class_member_rating})</c:if>
													</div>
												</div>
												<div class="col-lg-1 col-md-1"></div>
												<div class="col-lg-8 col-md-7">
													<div><textarea style="width: 100%; height: 50px;overflow-y:hidden; border: 0px solid black; resize:none; margin-top: 20px;" readonly="readonly" id="member_info" >${cDto.member_info}</textarea> </div>
												</div>
											</div>
										</div>
										<hr>


										<!-- class information 탭의 내용 -->
										<div class="target" id="nav3">
											<div style="margin-bottom: 10px;"><b>강의 소개 : </b></div>
											<div> &nbsp; &nbsp;${cDto.class_detail}</div><br>
											<span><b>강의 지역 : </b></span>  &nbsp; &nbsp;  ${cDto.class_area} <br>
											<span><b>강의 기간 : </b></span> &nbsp; &nbsp;  ${cDto.class_sd} <c:if test="${cDto.class_cd ne cDto.class_sd}"><div class="detail_content">~ ${cDto.class_cd}</div></c:if><br>
											<span><b>시작 시간 : </b></span> &nbsp; &nbsp;  ${class_time_H}시 ${class_time_M}분
												<c:if test="${cDto.class_cd ne null}"><div class="detail_content"> ~ ${class_time_HH}시 <c:if test="${class_time_MM<10}">0</c:if>${class_time_MM}분</div>
												</c:if><br> 
											<span><b>강의 시간 :  </b></span> &nbsp; &nbsp;${cDto.class_time}분<br>
											<span><b>참가 인원 : </b></span> &nbsp; &nbsp; ${cDto.class_now_participation}/${cDto.class_participation}명<br>
											<c:if test="${cDto.class_type eq 'C'}"><span><b>강의 가격 : </b></span> &nbsp; &nbsp;  ${cDto.class_price}원<br></c:if>
											<span><b>D-day : </b></span> &nbsp; &nbsp; &nbsp; &nbsp; ${cDto.class_d_day}일<br>
										<!-- 	<p>보내는 고동을 같은 풀밭에 것이다. 무엇을 가지에 얼마나 인류의 봄바람이다. 맺어, 원질이 구하지 예가 유소년에게서 새가 어디 풍부하게 광야에서 것이다. 소담스러운 인간에 들어 봄바람을 있으며, 유소년에게서 것이다. 얼음 기쁘며, 웅대한 그림자는 아름다우냐? 가슴에 꽃이 이것을 반짝이는 봄바람이다. 얼마나 관현악이며, 열락의 뼈 보이는 옷을 가치를 때문이다. 소담스러운 피고, 끝에 뿐이다. 가는 우리는 위하여서, 가슴이 청춘의 얼음 가진 이것이다. 속잎나고, 따뜻한 남는 때문이다.

												속잎나고, 우리 봄날의 사막이다. 청춘에서만 청춘의 무엇을 힘있다. 그들에게 든 청춘의 창공에 이성은 없는 우리 우는 소리다.이것은 황금시대다. 하는 용감하고 우리의 쓸쓸하랴? 소담스러운 그들의 우리 반짝이는 못하다 현저하게 바로 것이다. 광야에서 낙원을 곳이 열매를 시들어 이상 청춘의 청춘이 이것이다. 동산에는 눈이 넣는 교향악이다. 무한한 우리는 커다란 싸인 운다. 이 꾸며 뜨고, 사랑의 오직 끓는다.
												
												가는 있는 대고, 우는 인생에 오직 밥을 몸이 이것이다. 인간은 사람은 그들에게 힘차게 대한 인생에 수 갑 우리의 것이다. 지혜는 소리다.이것은 뛰노는 같으며, 이것을 모래뿐일 것이다. 대고, 불어 생명을 끝까지 황금시대를 굳세게 하는 있는가? 넣는 타오르고 구하지 우리는 있으랴? 긴지라 풍부하게 무엇을 인생의 구할 청춘이 튼튼하며, 피고, 운다. 그들은 불러 찾아 있는 그들을 날카로우나 가슴이 것이다. 우리 같은 날카로우나 무엇을 설레는 피고 소리다.이것은 아름다우냐? 없는 석가는 위하여 같으며, 운다.</p>
 -->
										</div>
										<hr>

										<!-- review 탭의 내용 -->
										<c:if test="${cDto.class_type eq 'C'}">
										<div class="target" id="nav4">
											<!-- 후기 목록 가져오기 -->
											<span><b>강사 후기 : </b></span></br>
											<c:forEach items="${rDto}" var="reviewdto">
												<div class="review_container col-md-10 col-sm-12">->
													<img class="review_img" alt="회원 프로필" src="resources/img/member/${reviewdto.profile_img}">
													<div class="review_name">${reviewdto.member_name}</div>
													<div class="mb-0 teacherstar" data-minority="${reviewdto.review_rating}"
															onclick="gogostar(this)" style="padding-top: 10px; display: inline-block;"></div>(${reviewdto.review_rating})<hr>
													<div class="review_content"> &nbsp; &nbsp;${reviewdto.review_detail}</div>
												</div>
												
											</c:forEach>
											
											
										<!-- 	<p>보내는 고동을 같은 풀밭에 것이다. 무엇을 가지에 얼마나 인류의 봄바람이다. 맺어, 원질이 구하지 예가 유소년에게서 새가 어디 풍부하게 광야에서 것이다. 소담스러운 인간에 들어 봄바람을 있으며, 유소년에게서 것이다. 얼음 기쁘며, 웅대한 그림자는 아름다우냐? 가슴에 꽃이 이것을 반짝이는 봄바람이다. 얼마나 관현악이며, 열락의 뼈 보이는 옷을 가치를 때문이다. 소담스러운 피고, 끝에 뿐이다. 가는 우리는 위하여서, 가슴이 청춘의 얼음 가진 이것이다. 속잎나고, 따뜻한 남는 때문이다.

												속잎나고, 우리 봄날의 사막이다. 청춘에서만 청춘의 무엇을 힘있다. 그들에게 든 청춘의 창공에 이성은 없는 우리 우는 소리다.이것은 황금시대다. 하는 용감하고 우리의 쓸쓸하랴? 소담스러운 그들의 우리 반짝이는 못하다 현저하게 바로 것이다. 광야에서 낙원을 곳이 열매를 시들어 이상 청춘의 청춘이 이것이다. 동산에는 눈이 넣는 교향악이다. 무한한 우리는 커다란 싸인 운다. 이 꾸며 뜨고, 사랑의 오직 끓는다.
												
												가는 있는 대고, 우는 인생에 오직 밥을 몸이 이것이다. 인간은 사람은 그들에게 힘차게 대한 인생에 수 갑 우리의 것이다. 지혜는 소리다.이것은 뛰노는 같으며, 이것을 모래뿐일 것이다. 대고, 불어 생명을 끝까지 황금시대를 굳세게 하는 있는가? 넣는 타오르고 구하지 우리는 있으랴? 긴지라 풍부하게 무엇을 인생의 구할 청춘이 튼튼하며, 피고, 운다. 그들은 불러 찾아 있는 그들을 날카로우나 가슴이 것이다. 우리 같은 날카로우나 무엇을 설레는 피고 소리다.이것은 아름다우냐? 없는 석가는 위하여 같으며, 운다.</p>

 -->
										</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
	

			<!-- footer시작 -->
				
				</div>
				<div  class="side_container_container col-md-2 mb-2" style="padding:0 0;">
				<div class="side_container col-md-12 mb-12">
					<div class="detail_head">위치 : <div class="detail_content">${cDto.class_area}</div></div>
					<c:set value="${cDto.class_week}" var="class_week"/>
					<div class="detail_head">요일: <div class="detail_content"><c:forEach items="${fn:split(class_week,'|')}" var="week">
						<button class="btn btn-primary"> 
						<c:if test="${week==1}">일</c:if>
						<c:if test="${week==2}">월</c:if>
						<c:if test="${week==3}">화</c:if>
						<c:if test="${week==4}">수</c:if>
						<c:if test="${week==5}">목</c:if>
						<c:if test="${week==6}">금</c:if>
						<c:if test="${week==7}">토</c:if>
						</button>
					</c:forEach></div></div>
					<c:set value="${cDto.class_sd}" var="class_sd"/> 
					<c:set value="${cDto.class_cd}" var="class_cd"/>
					
					<div class="detail_head">일자 : <div class="detail_content">${fn:substring(class_sd,0,10)} <c:if test="${cDto.class_cd ne cDto.class_sd}"><div class="detail_content"> ~ ${fn:substring(class_cd,0,10)}</div></c:if></div></div>
					<div class="detail_head">시작시간 : <div class="detail_content">${class_time_H}시 ${class_time_M}분
						<div class="detail_content"> ~ ${class_time_HH}시 <c:if test="${class_time_MM<10}">0</c:if>${class_time_MM}분</div></div></div>
					<div class="detail_head">강의시간 : <div class="detail_content">${cDto.class_time}분</div></div>
					<div class="detail_head">참가 인원 : <div class="detail_content">${cDto.class_now_participation}/${cDto.class_participation}명</div></div>
					<c:if test="${cDto.class_type eq 'C'}"><div class="detail_head">금액 : <div class="detail_content">${cDto.class_price}원</div></div></c:if>
					<div class="col-md-12">
						<form action="regist_class.do" id="regist_class" method="post">
						<input type="hidden" name="seq" value="${cDto.seq}">
						</form>
						<button type="button" class="btn btn-warning center-block py-2 px-4 text-white"  style="margin-top: 5px;margin-bottom:10px; width: 100%;"
						onclick="registClass(${cDto.seq})">
						<b>강의 신청</b></button>
               		</div>
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
	<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
	integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
	crossorigin="anonymous"></script>
	<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
	integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
	crossorigin="anonymous"></script>
	<script src="resources/js/star.js" defer="defer"></script>
<script type="text/javascript">
$('#nav > ul > li > a').on('click', function(event) {
    $(this).parent().parent().find('li').removeClass('actived');
    $(this).parent().addClass('actived');
});
$(document).ready(function() { // 객체명, 기본사이즈
	    var sTextarea = document.getElementById('member_info');
	    var csize = (sTextarea.scrollHeight >= 50) ? sTextarea.scrollHeight+"px" : 50+"px";
	    sTextarea.style.height = 50+"px"; 
	    sTextarea.style.height = csize;
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

$(window).on('scroll',function() {
       if($(window).scrollTop()+100 >= $('.side_container_container').offset().top) {
    	 $('.side_container').removeClass('col-md-12 mb-12');
         $('.side_container').addClass('side_container_tapped col-md-2 mb-2');
       }else{
    	   $('.side_container').removeClass('side_container_tapped col-md-2 mb-2');
    	   $('.side_container').addClass('col-md-12 mb-12');
       }
});
// function moveSite-section(section) {
// 	var offset = section.offset();
// 	$(section).css
// 	$('html, body').animate({scrollTop : (offset.top),scrollLeft :(offset.left)},0);
// // 	var navScroll = $("#nav" + seq);
// // 	navScroll.offset({top:400});
// // 	$('html, body').animate({scrollTop : offset.top}, 400);
// }
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