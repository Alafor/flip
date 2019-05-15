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
  <title>메세지 보내기</title>
  <style type="text/css">
  .ui-menu{padding-left: 0px;}
  	.ui-menu-item{list-style:none;width: 180px;
  	}
  	.ui-menu-item-wrapper{
  		background-color: #f8f9fc;
  		list-style:none;
  		  
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
            <h1 class="h3 mb-0 text-gray-800">회원 메세지 보내기</h1>
          </div>

          <!-- Content Row -->
          <div class="row">
            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-6 col-md-6 mb-6">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
	                      <div class="container">
							<ul class="nav nav-tabs">
							  <li class="nav-item">
							    <a class="nav-link active" data-toggle="tab" href="#qwe">전체 메세지 보내기</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" data-toggle="tab" href="#asd">개인 메세지 보내기</a>
							  </li>
							</ul>
						  
							  <div class="tab-content">
								<div class="tab-pane fade show active" id="qwe">
									<div style="margin-left: 20px;">
										<form action="A_sendMsg.do" method="post">
											<input type="hidden" name="msg_to" value="A">
											<br> 
											<h3>전체 메세지 내용 입력</h3>
											<textarea rows="10" cols="50" name="msg_content"></textarea>
											<input type="submit" class="btn btn-warning center-block py-2 px-4 text-white" value="메세지 전송">
										</form>
									</div>
								</div>
								<div class="tab-pane fade" id="asd">
									<div style="margin-left: 20px;">
										<form action="A_sendMsg.do" method="post">
											<div style="margin-top:20px;">
											보낼이 : <input type="text" name="msg_to" id="autocompleteText">
											</div>
											<br> 
											<h3>개인 메세지 내용 입력</h3>
											<textarea rows="10" cols="50" name="msg_content"></textarea>
											<input type="submit" class="btn btn-warning center-block py-2 px-4 text-white" value="메세지 전송">
										</form>
									</div>
								</div>
							</div>
	                    </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
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
 	<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
  <script type="text/javascript">
  $(function(){
	  $("#autocompleteText").autocomplete({ 
		  source : function( request, response ) {
		  //많이 봤죠? jquery Ajax로 비동기 통신한 후
			//json객체를 서버에서 내려받아서 리스트 뽑는 작업 
				$.ajax({
					//호출할 URL 
					type: 'post',
					url : "userSerch.do",
					//우선 jsontype json으로 
					dataType : "json",
					// parameter 값이다. 여러개를 줄수도 있다.
					data : { //request.term >> 이거 자체가 text박스내에 입력된 값이다. 
						searchValue : request.term
					},
					success : function(data) { //return 된놈을 response() 함수내에 다음과 같이 정의해서 뽑아온다.
						
						response($.map(data, function(item) {
							return {
								//label : 화면에 보여지는 텍스트
								//value : 실제 text태그에 들어갈 값
								//본인은 둘다 똑같이 줬음 
								//화면에 보여지는 text가 즉, value가 되기때문 
								label : item,
								value : item
							}
						}));
					}
				});
			}, //최소 몇자 이상되면 통신을 시작하겠다라는 옵션
			minLength : 1,
			//자동완성 목록에서 특정 값 선택시 처리하는 동작 구현 
			//구현없으면 단순 text태그내에 값이 들어간다. 
// 			select : function(event, ui) {
// 				if (ui.item) {
// 	                event.preventDefault();
// 	                $("#selected_tags span").append('<div style:"background-color:gray;">'+ ui.item.label +'</div>');
// 	                //$("#tagQuery").value = $("#tagQuery").defaultValue
// 	                var defValue = $("#tagQuery").prop('defaultValue');
// 	                $("#tagQuery").val(defValue);
// 	                $("#tagQuery").blur();
// 	                return false;
// 	            }
// 			}
// 			,focus: function(event, ui){ return false;}
		});
	});
</script>
</body>

</html>
