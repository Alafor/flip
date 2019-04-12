<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>회원가입</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Resources/LoginForm/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/css/util.css">
	<link rel="stylesheet" type="text/css" href="Resources/LoginForm/css/main.css">
<!--===============================================================================================-->
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
          alert("에러가 발생했습니다.");ㅣ
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
	
	<!-- header -->
		<jsp:include page="header.jsp" />
		<!-- header 종료 -->
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" action="signup.do" onsubmit="return checkpw()" method="post">
					<span class="login100-form-title p-b-51">
						회원가입<p><hr style="border: solid 2px #30e3ca; width:100%;"></p>
					</span>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "성함을 입력해주세요">
						<input class="input100" type="text" name="member_name" placeholder="이름">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "아이디를 입력해주세요">
						<input class="input100" id="t_id" type="text" name="member_id" placeholder="아이디" onchange="fn_process()">
						<span class="focus-input100"></span>
						<div id="message"></div>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "비밀번호를 입력해주세요">
						<input class="input100" id="Pw" type="password" name="member_password" placeholder="비밀번호">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "비밀번호를 입력해주세요">
						<input class="input100" id="PwCheck" type="password" name="member_password" placeholder="비밀번호확인">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "이메일을 정확히 입력해주세요">
						<input class="input100" type="text" name="member_email" placeholder="이메일">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "생년월일을 입력해주세요">
						<input class="input100" type="text" name="member_birth" placeholder="생년월일"
						onkeyup="auto_date(event, this)" onkeypress="auto_date(event, this)" maxlength="10">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "연락처를 입력해주세요">
						<input class="input100" type="text" name="member_phone" placeholder="연락처">
						<span class="focus-input100"></span>
					</div>
					
					
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="/loginform.do" class="txt1">
								로그인?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn" type="submit">
							회원가입
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<!-- <div id="dropDownSelect1"></div> -->
	<div>
	<jsp:include page="footer.jsp" />
	</div>
	
	
<!--===============================================================================================-->
	<script src="Resources/LoginForm/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Resources/LoginForm/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Resources/LoginForm/vendor/bootstrap/js/popper.js"></script>
	<script src="Resources/LoginForm/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Resources/LoginForm/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Resources/LoginForm/vendor/daterangepicker/moment.min.js"></script>
	<script src="Resources/LoginForm/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Resources/LoginForm/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Resources/LoginForm/js/main.js"></script>

</body>
</html>