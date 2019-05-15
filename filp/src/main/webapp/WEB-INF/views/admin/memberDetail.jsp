<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Custom fonts for this template-->
  <link href="resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
  <title>회원 정보 수정</title>
 <script type="text/javascript">
 function checkpw() {
     var pw = document.getElementById("Pw").value;
     var pwck = document.getElementById("PwCheck").value;

     if (pw != pwck) {
         alert('비밀번호가 틀렸습니다. 다시 입력해 주세요');
         return false;
     }
 }
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
<style type="text/css">
#id {
	margin-left: 20px;
}

.hidden_input {
	margin: 0 auto;
}

.hidden_input label {
	padding: .5em .75em;
	color: #fff;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #30e3ca;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

.hidden_input input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

	<jsp:include page="A_header2.jsp"/>
	
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm text-right" id="delmember"><i class="fas fa-download fa-sm text-white-50"></i> 회원 삭제</a>
          </div>

          <!-- Content Row -->
           	<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						회원정보<span class="text-warning"> 변경</span>
					</h2>
				</div>
			</div>
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">
          
          	<form class="p-5 bg-white validate-form" action="AMemberUpdate.do" onsubmit="return checkpw()" method="post" enctype="multipart/form-data" style="border: 2px solid #30e3ca; border-radius: 20px;">
          	<input type="hidden" name="member_type"  value="${dto.member_type}">
             
 			<div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "이름을 입력해주세요">
                  <label class="text-black" for="name">이름</label> 
                  <input type="text" class="form-control" name="member_name" value="${member.member_name}" >
                </div>
              </div>	            
             
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "아이디를 입력해주세요">
                  <label class="text-black" for="id">아이디</label> 
                  <input type="text" id="t_id" class="form-control" name="member_id" onchange="fn_process()" value="${member.member_id}" >
                </div>
                <div id="message" style="margin-left: 20px; color: red;"></div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input " data-validate = "이메일을 정확히 입력해주세요">
                  <label class="text-black" for="email">이메일</label> 
                  <input type="email" class="form-control" name="member_email"  value="${member.member_email}" readonly="readonly" >
                </div>
              </div>
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "패스워드를 입력해주세요">
                  <label class="text-black" for="password">패스워드</label> 
                  <input type="password" id="Pw" class="form-control" name="member_password"  value="${member.member_password}">
                </div>
              </div>
              
              <div class="row form-group ">              
                <div class="col-md-12 validate-input" data-validate ="패스워드를 입력해주세요" >
                  <label class="text-black" for="password">패스워드확인</label>  
                  <input type="password" id="PwCheck" class="form-control"  value="${member.member_password}">
                </div>
              </div>
              
              <div class="row form-group">              
                <div class="col-md-12 validate-input" data-validate = "생년월일을 입력해주세요">
                  <label class="text-black" for="birth">생년월일</label> 
                  <input type="text"  class="form-control" name="member_birth" 
                  onkeyup="auto_date(event, this)" onkeypress="auto_date(event, this)" maxlength="10"  value="${member.member_birth}">
                </div>
              </div>
          	<div class="row form-group">              
                <div class="col-md-12 validate-input"  data-validate = "연락처를 입력해주세요">
                  <label class="text-black" for="phone">전화번호</label> 
                  <input type="text" class="form-control" name="member_phone" 
                  onkeyup="auto_phone(event, this)" onkeypress="auto_phone(event, this)" maxlength="13" value="${member.member_phone}">
                </div>
              </div>
              
              <div class="container">
					<label class="text-black">프로필등록</label>
					<div class="row form-group mb-6"
						style="border: 1px solid #ced4da; border-radius: 10px;">
						<div class="col-md-6">
							<!--left col-->
							<br>
							<div class="text-center testimonial">
								<figure class="mb-6">
									<img src="resources/img/class/${dto.class_img}"
										class=" avatar img-fluid mb-6" alt="avatar">
									<br>
									<br>
									<h6>
										<b>프로필</b>
									</h6>
							</div>
						</div>
						<input type="hidden" name="old_file" value="${dto.class_img}">
						<div class="col-md-6 hidden_input"
							style="text-align: center; margin-top: 15%">
							<p style="color: orange;">업로드할 사진은 가로세로 사이즈가 같은걸로 하자.</p>
							<label class="btn" for="hidden_file">프로필등록</label> <input
								type="file" id="hidden_file"
								class="text-center center-block file-upload"
								name="member_profile">
							</figure>
						</div>
						<br>
					</div>
				</div>
              <c:if test="${member.member_type eq 'T'}">
	              <div class="container">
	              	<div class="row form-group">
	              		<div class="col-md-12" style="padding: 0;">
	                 	 <label class="text-black" for="message">강사소개</label> 
	                 		 <textarea name="member_info" id="message" cols="40" rows="7" class="form-control" placeholder=""
	                 		  data-validate = "상세정보를 입력해 주세요">
학력사항----------------------------------
경력사항----------------------------------
수상내역----------------------------------
	                 		 </textarea>
	               		</div>
	              	</div>
	             </div>
              </c:if>
              <div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <input type="submit" value=" 정보 변경 " class="btn btn-primary py-2 px-4 text-white" style="width: 100%;">
                </div>
              </div>
              <div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <button type="button" class="btn btn-danger py-2 px-4 text-white" style="width: 100%;" onclick="location.href='memberMgt.do'" >
                  	뒤로가기
                  </button>
                </div>
              </div>
              </form>
          </div>
          </div>
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/adminvendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="resources/admin/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="resources/admin/js/demo/chart-area-demo.js"></script>
  <script src="resources/admin/js/demo/chart-pie-demo.js"></script>
	<script type="text/javascript">
	
	$('document').ready(function(){
		$('#delmember').click(function(){
			var str = "aMemberDelete.do?member_email="+$('input[name=member_email]').val();
			location.replace(str);
			});
	});
	</script>
</body>

</html>
