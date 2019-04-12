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

<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css">

<script type="text/javascript">
    function checkpw() {
        var pw = document.getElementById("Pw").value;
        var pwck = document.getElementById("PwCheck").value;
 
        if (pw != pwck) {
            alert('비밀번호가 틀렸습니다. 다시 입력해 주세요');
            return false;
        }
    }
</script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
 function fn_process(){
    var _id=$("#t_id").val();
    if(_id==''){
       alert("ID를 입력하세요");
       return;
    }
    $.ajax({
       type:"post",
       async:false,  
       url:"handler.do",
       dataType:"text",
       data: {id:_id},
       success:function (data,textStatus){
    	   
          if(data=='usable'){
        	  $('#message').text("사용할 수 있는 ID입니다.");
              $('#btnDuplicate').prop("disabled", true);
           }else{
             $('#message').text("사용할 수 없는 ID입니다.");
          }
       },
       error:function(data,textStatus){
          alert("에러가 발생했습니다.");
       },
       complete:function(data,textStatus){
          //alert("작업을완료 했습니다");
       }
    });  //end ajax    
 }      
</script>
<script type="text/javascript">

function auto_date( e, oThis ){

var num_arr = [ 
97, 98, 99, 100, 101, 102, 103, 104, 105, 96,
48, 49, 50, 51, 52, 53, 54, 55, 56, 57
]

var key_code = ( e.which ) ? e.which : e.keyCode;
if( num_arr.indexOf( Number( key_code ) ) != -1 ){

var len = oThis.value.length;
if( len == 4 ) oThis.value += "-";
if( len == 7 ) oThis.value += "-";

}

}

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
	
	
	<div><h1>회원가입</h1></div>
	<div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">
          
          	<form class="p-5 bg-white validate-form" action="signup.do" onsubmit="return checkpw()" method="post">
             
 			<div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "이름을 입력해주세요">
                  <label class="text-black" for="name">이름</label> 
                  <input type="text" class="form-control" name="member_name">
                </div>
              </div>	            
             
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "아이디를 입력해주세요">
                  <label class="text-black" for="id">아이디</label> 
                  <input type="text" id="t_id" class="form-control" name="member_id" >
                </div>
                <div id="message"></div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "패스워드를 입력해주세요">
                  <label class="text-black" for="password">패스워드</label> 
                  <input type="text" id="Pw" class="form-control" name="member_password" >
                </div>
              </div>
              <div class="row form-group validate-input" data-validate = "패스워드를 입력해주세요">              
                <div class="col-md-12">
                  <label class="text-black" for="password">패스워드확인</label> 
                  <input type="text" id="PwCheck" class="form-control" name="member_password" >
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input m-b-16" data-validate = "이메일을 정확히 입력해주세요">
                  <label class="text-black" for="email">이메일</label> 
                  <input type="text" class="form-control" name="member_email">
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "생년월일을 입력해주세요">
                  <label class="text-black" for="birth">생년월일</label> 
                  <input type="text"  class="form-control" name="member_birth" 
                  onkeyup="auto_date(event, this)" onkeypress="auto_date(event, this)" maxlength="10">
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
                  <p>Have an account? <a href="login.html">Log In</a></p>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="회원가입" class="btn btn-primary py-2 px-4 text-white">
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