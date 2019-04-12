<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
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
    
              

    <div class="site-section bg-light">
      <div class="container">
      	<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						로그<span class="text-warning">인</span>
					</h2>
					<p class="color-black-opacity-5">LOG&amp;IN</p>
				</div>
			</div>
      
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">

           <!-------------------------------------------------------------------------------------------------->

            <form action="login.do" class="p-5 bg-white" method="POST">
             
              <div class="row form-group">
                
                <div class="col-md-12 validate-input" data-validate = "아이디를 입력해주세요">
                  <label class="text-black" for="id">아이디</label> 
                  <input type="text" name="id" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12 validate-input" data-validate = "패스워드를 입력해주세요">
                  <label class="text-black" for="password">패스워드</label> 
                  <input type="password" name="password" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-12">
                  <p>아직 가입 안하셨나요? <a href="signupform.do">회원가입</a></p>
                </div>
              </div>

            
              <div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <input type="submit" value="로그인" class="btn btn-primary py-2 px-4 text-white" style="width: 100%;">
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