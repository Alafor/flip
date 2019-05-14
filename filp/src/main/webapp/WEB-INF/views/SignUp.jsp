<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html>
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

function auto_phone( e, oThis ){

	var num_arr = [ 
	97, 98, 99, 100, 101, 102, 103, 104, 105, 96,
	48, 49, 50, 51, 52, 53, 54, 55, 56, 57
	]

	var key_code = ( e.which ) ? e.which : e.keyCode;
	if( num_arr.indexOf( Number( key_code ) ) != -1 ){

	var len = oThis.value.length;
	if( len == 3 ) oThis.value += "-";
	if( len == 8 ) oThis.value += "-";

	}

	}

</script>
<style type="text/css">
.hidden_input{margin: 0 auto;}
.hidden_input label { padding: .5em .75em; color: #fff; font-size: inherit; line-height: normal; vertical-align: middle;
					 background-color: #30e3ca; cursor: pointer; border: 1px solid #ebebeb; border-bottom-color: #e2e2e2; border-radius: .25em; }

.hidden_input input[type="file"] {position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip:rect(0,0,0,0); border: 0; }


	
</style>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
      <div class="container">
      	<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						회원<span class="text-warning">가입</span>
					</h2>
					<p class="color-black-opacity-5">SIGN&amp;UP</p>
				</div>
			</div>
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">
          
          	<form class="p-5 bg-white validate-form" action="signup.do" onsubmit="return checkpw()" method="post" enctype="multipart/form-data" style="border: 2px solid #30e3ca; border-radius: 20px;">
          	<input type="hidden" name="member_type"  value="S">
             
 			<div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "한글과영문만 사용가능합니다">
                  <label class="text-black" for="name">이름</label> 
                  <input type="text" class="form-control" name="member_name" autofocus="autofocus">
                </div>
              </div>	            
             
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "5~10자의영문이나 숫자가 조합되어야합니다">
                  <label class="text-black" for="id">아이디</label> 
                  <input type="text" id="t_id" class="form-control" name="member_id" onchange="fn_process()">
                </div>
                <div id="message" style="margin-left: 20px; color: red;"></div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "최소 8자리에 숫자, 문자, 특수문자 각각 1개 이상 포함되야합니다">
                  <label class="text-black" for="password">패스워드</label> 
                  <input type="password" id="Pw" class="form-control" name="member_password" >
                </div>
              </div>
              <div class="row form-group ">              
                <div class="col-md-12 validate-input" data-validate ="패스워드를 입력해주세요" >
                  <label class="text-black" for="password">패스워드확인</label>  
                  <input type="password" id="PwCheck" class="form-control" >
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input " data-validate = "이메일을 정확히 입력해주세요">
                  <label class="text-black" for="email">이메일</label> 
                  <input type="email" class="form-control" name="member_email" placeholder="ex)***@gmail.com">
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "생년월일을 입력해주세요">
                  <label class="text-black" for="birth">생년월일</label> 
                  <input type="text"  class="form-control" name="member_birth" 
                  onkeyup="auto_date(event, this)" onkeypress="auto_date(event, this)" maxlength="10" placeholder="ex)19900101">
                </div>
              </div>
          	<div class="row form-group">              
                <div class="col-md-12 validate-input"  data-validate = "'010','011','016','017','018'로 시작하는 번호만 사용 가능합니다.">
                  <label class="text-black" for="phone">전화번호</label> 
                  <input type="text" class="form-control" name="member_phone" 
                  onkeyup="auto_phone(event, this)" onkeypress="auto_phone(event, this)" maxlength="13" placeholder="ex)01012345678">
                </div>
              </div>
              
              <div class="container">     
    		<label class="text-black" >프로필등록</label>
    			<div class="row form-group mb-6" style="border: 1px solid #ced4da; border-radius: 10px; ">
  					<div class="col-md-6"><!--left col--><br>
                       <div class="text-center testimonial"><figure class="mb-6"><img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class=" avatar img-fluid mb-6"" alt="avatar"><br><br>
        					<h6><b>프로필</b></h6></div></div>
        		       <div class="col-md-6 hidden_input" style="text-align:center;margin-top:15%"><p style="color: orange;">업로드할 사진은 가로세로 사이즈가 같은걸로 하자.</p>
        					<label for="hidden_file">프로필등록</label>
        						<input type="file" id="hidden_file" class="text-center center-block file-upload"  name="member_profile"></figure>
     					</div><br>
              
              		</div>
              </div>
              
              <div class="row form-group">
                <div class="col-12">
                  <p>로그인하시겠습니까? <a href="loginform.do">Log In</a></p>
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
		<script type="text/javascript">
	$(document).ready(function() {

	    
	    var readURL = function(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();

	            reader.onload = function (e) {
	                $('.avatar').attr('src', e.target.result);
	            }
	    
	            reader.readAsDataURL(input.files[0]);
	        }
	    }
	    

	    $(".file-upload").on('change', function(){
	        readURL(this);
	    });
	});
	</script>
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