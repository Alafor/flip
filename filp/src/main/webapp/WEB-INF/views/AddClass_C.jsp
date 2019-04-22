<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>회원가입</title>
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
<link rel="stylesheet" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<style type="text/css">
	#id {margin-left: 20px;}

</style>
<script type="text/javascript">
    function checkpw() {
        var pw = document.getElementById("Pw").value;
        var pwck = document.getElementById("PwCheck").value;
 
        if (pw != pwck) {
            alert('비밀번호가 틀렸습니다. 다시 입력해 주세요');
            return false;
        }
    }
    $(document).ready(function(){
    	var time2 = "";
    	for(var i=0;i<61;i++){
    		var mim = "";
    		if(i<10){
    			mim="0"+i;
    		}
    		time2 +="<option value='"+mim+"'>"+mim+"<option>";
    	}
    	var starttime2 = $("#class_starttime2").html(starttime2);
    });
    
</script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

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
						강의<span class="text-warning">등록</span>
					</h2>
					<p class="color-black-opacity-5">Register&amp;Class</p>
				</div>
			</div>
        <div class="row justify-content-center" >
          <div class="col-md-7 mb-5"  data-aos="fade">
          
          	<form class="p-5 bg-white validate-form" action="signup.do" onsubmit="return checkpw()" method="post" style="border: 2px solid #30e3ca; border-radius: 20px;">
          	<input type="hidden" name="member_type"  value="${membertype}">
             
             <div class="row form-group">              
                <div class="col-md-12" >
                  <label class="text-black" for="class_depa">카테고리</label> 
                  <select class="form-control" name='class_depa'>
                  	<option value="exercise">운동</option>
                  	<option value="music">음악 </option>
                  	<option value="photo">사진 </option>
                  	<option value="yolo">yolo </option>
                  	<option value="investment">재테크 </option>
                  	<option value="beauty">뷰티 </option>
                  	<option value="language">외국어 </option>
                  	<option value="videoedit">영상편집 </option>
                  	<option value="it">IT</option>
                  	<option value="design">디자인</option>
                  	<option value="cook">요리</option>
                  </select>
                </div>
              </div>
              	 
 			  <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "이름을 입력해주세요">
                  <label class="text-black" for="class_name">이름</label> 
                  <input type="text" class="form-control" name="member_name">
                </div>
              </div>	            
             
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "수업 요약을 입력해주세요">
                  <label class="text-black" for="class_info">수업 요약</label>
                  <textarea rows="5" cols="" class='form-control'></textarea> 
                </div>
                <div id="message" style="margin-left: 20px; color: red;"></div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12" >
                  <label class="text-black" for="class_depa">지역 설정</label> 
                  <select class="form-control" name='class_depa'>
                  	<option value="강남구">강남구</option>
                  	<option value="강동구">강동구</option>
                  	<option value="강북구">강북구</option>
                  	<option value="강서구">강서구</option>
                  	<option value="관악구">관악구</option>
                  	<option value="광진구">광진구</option>
                  	<option value="구로구">구로구</option>
                  	<option value="금천구">금천구</option>
                  	<option value="노원구">노원구</option>
                  	<option value="도봉구">도봉구</option>
                  	<option value="동대문구">동대문구</option>
                  	<option value="동작구">동작구</option>
                  	<option value="마포구">마포구</option>
                  	<option value="서대문구">서대문구</option>
                  	<option value="서초구">서초구</option>
                  	<option value="성동구">성동구</option>
                  	<option value="성북구">성북구</option>
                  	<option value="송파구">송파구</option>
                  	<option value="양천구">양천구</option>
                  	<option value="영등포구">영등포구</option>
                  	<option value="용산구">용산구</option>
                  	<option value="은평구">은평구</option>
                  	<option value="종로구">종로구</option>
                  	<option value="중구">중구</option>
                  	<option value="중랑구">중랑구</option>
                  </select>
                </div>
              </div>
              <div class="row form-group ">              
                <div class="col-md-12 validate-input" data-validate ="패스워드를 입력해주세요">
                  <label class="text-black" for="password">패스워드확인</label> 
                  <input type="text" id="PwCheck" class="form-control" >
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input " data-validate = "이메일을 정확히 입력해주세요">
                  <label class="text-black" for="email">이메일</label> 
                  <input type="email" class="form-control" name="member_email">
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "수업시간을 입력해 주세요">
                  <label class="text-black" for="birth">수업 시작시간</label>
                  <select class="form-control .col-xs-6 .col-md-4" id ="class_starttime1" onchange="changedata(this.value)">
                  	<option value="1">1</option>
                  	<option value="1">2</option>
                  	<option value="1">3</option>
                  	<option value="1">4</option>
                  	<option value="1">5</option>
                  	<option value="1">6</option>
                  	<option value="1">7</option>
                  	<option value="1">8</option>
                  	<option value="1">9</option>
                  	<option value="1">10</option>
                  	<option value="1">11</option>
                  	<option value="1">12</option>
                  </select>:
                  <select class="form-control .col-xs-6 .col-md-4" id="class_starttime2">
                  	
                  </select>
                </div>
              </div>
          	<div class="row form-group">              
                <div class="col-md-12 validate-input"  data-validate = "연락처를 입력해주세요">
                  <label class="text-black" for="phone">전화번호</label> 
                  <input type="text" class="form-control" name="member_phone" >
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-12">
                  <p>Have an account? <a href="loginform.do">Log In</a></p>
                </div>
              </div>
              
              <div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <input type="submit" value=" 회원가입 " class="btn btn-primary py-2 px-4 text-white" style="width: 100%;">
                </div>
              </div>
              </form>
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