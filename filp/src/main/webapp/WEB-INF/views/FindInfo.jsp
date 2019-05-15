<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비밀번호 찾기</title>
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

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	function search_check(num) {
		if(num == '1'){
			document.getElementById("searchP").style.display = "none";
			document.getElementById("searchI").style.display = "";
		}else{
			document.getElementById("searchI").style.display = "none";
			document.getElementById("searchP").style.display = "";
		}
	}

</script>
<script type="text/javascript">
// 아이디 & 스토어 값 저장하기 위한 변수
	var idV = "";
	// 아이디 값 받고 출력하는 ajax
	var idSearch_click = function(){
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/userSearch.do?board_name="
					+$('#board_name').val()+"&board_email="+$('#board_email_1').val(),
			success:function(data){
				if(data == 0){
					$('#id_value').text("일치하는 정보가 없습니다.!");	
				} else {
					$('#id_value').text(data);
					// 아이디값 별도로 저장
					idV = data;
				}
			}
		});
	}
	</script>




</head>
<body>
<jsp:include page="IdSearchModal.jsp"/> 
<%-- <%@ include file="/WEB-INF/views/IdSearchModal.jsp" %> --%>

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
    
              

    <div class="site-section bg-light">
      <div class="container">
      	<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						아이디/비밀번호<span class="text-warning">찾기</span>
					</h2>
					<p class="color-black-opacity-5">FIND ID&amp;FORGOT YOUR PASSWORD</p>
				</div>
			</div>
      
        <div class="row justify-content-center">
          <div class="col-md-6 mb-6"  data-aos="fade" style="border: 2px solid #30e3ca; border-radius: 20px;">



           
             
             
             <div class="row text-center" style="margin: 20px;font-size: 20px;">
             
                <div class="col-md-12 category">
                  <input type="radio" name="search" id="search_id"  onclick="search_check(1)" checked="checked" style="margin: 0px 10px 0px 10px;">
                  <label class="text-black" for="search_id">아이디찾기</label>
                 
                   <input type="radio" name="search" id="search_pw"  onclick="search_check(2)" style="margin: 0px 10px 0px 10px;">
                  <label class="text-black" for="search_pw">비밀번호찾기</label>
                </div>
                
              </div>
             
             
             
             <div id="searchI">
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "아이디를 입력해주세요">
                  <label class="text-black" for="board_name">이름</label> 
                  <input type="text" id="board_name" name="board_name" class="form-control">
                </div>
              </div>
              

              <div class="row form-group">             
                <div class="col-md-12 validate-input">
                  <label class="text-black" for="board_email_1">이메일</label> 
                  <input type="email" id="board_email_1" name="board_email_1" class="form-control">
                </div>
              </div>
			 
			  <div class="row form-group">
                <div class="col-12">
                  <p>로그인하시겠습니까? <a href="loginform.do">Log In</a></p>
                </div>
              </div>

              <div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <button type="button" onclick="idSearch_click()" class="btn btn-primary py-2 px-4 text-white" style="width: 100%;" data-toggle="modal" data-target="#myModal">확인</button>
                </div>
              </div>
			</div>
			
			<form action="searchPassword.do" method="GET" >
			<div id="searchP" style="display: none;">
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "아이디를 입력해주세요">
                  <label class="text-black" for="member_id">아이디</label> 
                  <input type="text" id="member_id" name="member_id" class="form-control">
                </div>
              </div>

              <div class="row form-group">             
                <div class="col-md-12 validate-input" data-validate = "이메일을입력해주세요">
                  <label class="text-black" for="member_email">이메일</label> 
                  <input type="email" id="member_email" name="member_email" class="form-control">
                </div>
              </div>
				
			  <div class="row form-group">
                <div class="col-12">
                  <p>로그인하시겠습니까? <a href="loginform.do">Log In</a></p>
                </div>
              </div>	

              <div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <button type="submit" id="searchPw" class="btn btn-primary py-2 px-4 text-white" style="width: 100%;" >확인</button>
                </div>
              </div>
			</div>
  		</form>
           
          </div>
          
        </div>
      </div>
    </div>
    
    
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
    