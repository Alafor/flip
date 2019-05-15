<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html >
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
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
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
      <div class="site-mobile-menu-body"></div>
    </div>
    </div>
		
	<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(resources/images/star.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
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

            <form action="login.do" class="p-5 bg-white" method="POST" style="border: 2px solid #30e3ca; border-radius: 20px;">
             
              <div class="row form-group">
                
                <div class="col-md-12 validate-input" data-validate = "아이디를 입력해주세요">
                  <label class="text-black" for="id">아이디</label> 
                  <input type="text" name="id" class="form-control" autofocus="autofocus">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12 validate-input" data-validate = "패스워드를 입력해주세요">
                  <label class="text-black" for="password">패스워드</label> 
                  <input type="password" name="password" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <p>아직 가입 안하셨나요? <a href="signupform.do">회원가입</a></p>
                  <p>기억이 안나십니까?<a href="findinfo.do">아이디/비밀번호찾기</a></p>
                </div>
              </div>

            
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6">
                  <input type="submit" value="로그인" class="btn btn-primary text-white" style="width: 232px; height: 50px;"></div>
                  <br><br><div class="col-md-6 col-sm-6 col-xs-6" id="naverIdLogin"></div>
                  
             <!--    <div id="naverIdLogin">
                	<a id="naver-login-btn" href="#" role="button">
                		<img alt="" src="https://static.nid.naver.com/oauth/big_g.PNG" width="50%" height="50px">
                	</a>
                </div>
                 -->
              </div>
			
  
            <!-- 네이버아이디로로그인 버튼 노출 영역 -->
				
			<!-- //네이버아이디로로그인 버튼 노출 영역 -->

				<!-- 네이버아디디로로그인 초기화 Script -->
			<script type="text/javascript">
				var naverLogin = new naver.LoginWithNaverId(
				{
					clientId: "q6cMTLGnrqZXKiVTkOA3",
					callbackUrl: "http://localhost:8888/flip/callback.do",
					isPopup: false, /* 팝업을 통한 연동처리 여부 */
					loginButton: {color: "green", type: 3, height: 50 } /* 로그인 버튼의 타입을 지정 */
				}
			);
	
			/* 설정정보를 초기화하고 연동을 준비 */
			naverLogin.init();
	
			</script>
            </form>
<!-- // 네이버아이디로로그인 초기화 Script -->
            
          </div>
          
        </div>
      </div>
    </div>
    
    
    
    
    
    
    
    <div class="newsletter bg-white py-5 " style="background-size: cover;">
		<div class="container" style="max-width: 100%; height: auto;">
			<div class="listing-item">
				<div class="listing-image">
					<img src="resources/images/광고1.jpg" alt="Image" class="img-fluid">
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