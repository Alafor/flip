<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<% String class_termin = request.getParameter("class_termin"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Custom fonts for this template-->
  <link href="resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
  <title>강의 관리 페이지</title>
<style type="text/css">
	table tr td {min-width: 100px;} 
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

          <!-- Topbar Navbar -->

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">
          <%if("N".equals(class_termin)){         
          %>진행중인<%}else{ %>
                 폐강된	<%} %>	
          
          강의관리 페이지</h1>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">회원 정보</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>강의 seq</th>
                      <th>타입</th>
                      <th>강의명</th>
                      <th>강의 정보</th>
                      <th>시작시간</th>
                      <th>개설자</th>
                    </tr>
                  </thead>
                  
                </table>
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
  <script src="resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/admin/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
<!--   <script src="resources/admin/vendor/datatables/jquery.dataTables.min.js"></script> -->
<!--   <script src="resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script> -->
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
  <script src="resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
<!--   <script src="resources/admin/js/demo/datatables-demo.js" charset='utf-8'></script> -->
<script type="text/javascript">
$(document).ready(function() {
	var class_termin = {class_termin:"<%=class_termin %>"};  
// 	alert(class_termin);
	$.fn.dataTable.ext.errMode = function ( settings, helpPage, message ) { console.log(message)};
	  $('#dataTable').DataTable({
// 	      lengthMenu : [ [ 10, 15, 20, 30, -1 ], [ 10, 15, 20, 30, 'All' ] ],
	     serverSide: false,
	      "ajax": {
	          "url": "getClassListAjax.do",
	          "type": "POST",
	          "dataType": "json",
	          "data":class_termin
	      },	      
	      columns : [
	          {"data": 'seq'},
	          {"data": 'class_type'},
	          {
	        	  "data": 'class_name',
	        	"render": function (data, type) {      
	        		if ( type === 'display' ) {
	                 return '<a href="#" class="table_link" onclick="classDetail(this)">' + data + '</a>';
	        		}
	        	}
	          },
	          {"data": 'class_info'},
	          {"data": 'class_starttime'},
	          {"data": 'class_creator_name'}
	      ]
	  });
	  
	  
	});
	function classDetail(aa){
	var seqStr = $(aa).parent().parent().children().eq(0).text();
	var class_typeStr = $(aa).parent().parent().children().eq(1).text();
	location.href ='AClassDetail.do?seq='+seqStr+"&class_type="+class_typeStr+"&class_termin=<%=class_termin%>";
	// 	AMemberDetail.do?seq=
     }
    
</script>

</body>

</html>