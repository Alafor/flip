<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<% String class_termin = request.getParameter("class_termin"); %>
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
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
  <!-- Custom styles for this template-->
  <link href="resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
  <title>강의 수정</title>
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
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
          	<form action="aClassClose.do">
          		<input type="hidden" name="seq" value="${dto.seq}">
          		<input type="hidden" name="termin" value="<%=class_termin%>">
            	<button class="d-none d-sm-inline-block btn btn-sm btn-warning shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> 강의 폐쇄</button>
         	</form>
          	<form action="aClassDelete.do">
          		<input type="hidden" name="seq" value="${dto.seq}">
          		<input type="hidden" name="termin" value="<%=class_termin%>">
            	<button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> 강의 삭제</button>
         	</form>
          </div>

          <!-- Content Row -->
           	<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						강의<span class="text-warning">수정</span>
					</h2>
					<p class="color-black-opacity-5">Class&amp;Modification</p>
				</div>
			</div>
        <div class="row justify-content-center">
				<div class="col-md-7 mb-5" data-aos="fade">
					<form class="p-5 bg-white validate-form" action="AClassUpdate.do"
						 method="post"
						enctype="multipart/form-data"
						style="border: 2px solid #30e3ca; border-radius: 20px;">
						<input type="hidden" name="seq" value="${dto.seq}"> <input
							type="hidden" id="class_sd" name="class_sd" value=""> <input
							type="hidden" id="class_cd" name="class_cd" value="">
						<div class="row form-group">
							<div class="col-md-12">
								<label class="text-black" for="class_depa">카테고리</label> <select
									class="form-control" name='class_depa'>
									<option value="exercise" <c:if test="${dto.class_depa == 'exercise'}">selected</c:if>>운동</option>
									<option value="music" <c:if test="${dto.class_depa == 'music'}">selected</c:if>>음악</option>
									<option value="photo" <c:if test="${dto.class_depa == 'photo'}">selected</c:if>>사진</option>
									<option value="yolo" <c:if test="${dto.class_depa == 'yolo'}">selected</c:if>>yolo</option>
									<option value="investment" <c:if test="${dto.class_depa == 'investment'}">selected</c:if>>재테크</option>
									<option value="beauty" <c:if test="${dto.class_depa == 'beauty'}">selected</c:if>>뷰티</option>
									<option value="language" <c:if test="${dto.class_depa == 'language'}">selected</c:if>>외국어</option>
									<option value="videoedit" <c:if test="${dto.class_depa == 'videoedit'}">selected</c:if>>영상편집</option>
									<option value="it" <c:if test="${dto.class_depa == 'it'}">selected</c:if>>IT</option>
									<option value="design" <c:if test="${dto.class_depa == 'design'}">selected</c:if>>디자인</option>
									<option value="cook" <c:if test="${dto.class_depa == 'cook'}">selected</c:if>>요리</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="이름을 입력해주세요">
								<label class="text-black" for="class_name">이름</label> <input
									type="text" class="form-control" name="class_name" value="${dto.class_name}">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input"
								data-validate="수업 요약을 입력해주세요">
								<label class="text-black" for="class_info">수업 요약</label>
								<textarea rows="5" cols="" class='form-control'
									name="class_info" value="">${dto.class_info}</textarea>
							</div>
							<div id="message" style="margin-left: 20px; color: red;"></div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<label class="text-black" for="class_area">지역 설정</label> <select
									class="form-control" name='class_area'>
									<option value="강남구" <c:if test="${dto.class_area == '강남구'}">selected</c:if>>강남구</option>
									<option value="강동구" <c:if test="${dto.class_area == '강동구'}">selected</c:if>>강동구</option>
									<option value="강북구" <c:if test="${dto.class_area == '강북구'}">selected</c:if>>강북구</option>
									<option value="강서구" <c:if test="${dto.class_area == '강서구'}">selected</c:if>>강서구</option>
									<option value="관악구" <c:if test="${dto.class_area == '관악구'}">selected</c:if>>관악구</option>
									<option value="광진구" <c:if test="${dto.class_area == '광진구'}">selected</c:if>>광진구</option>
									<option value="구로구" <c:if test="${dto.class_area == '구로구'}">selected</c:if>>구로구</option>
									<option value="금천구" <c:if test="${dto.class_area == '금천구'}">selected</c:if>>금천구</option>
									<option value="노원구" <c:if test="${dto.class_area == '노원구'}">selected</c:if>>노원구</option>
									<option value="도봉구" <c:if test="${dto.class_area == '도봉구'}">selected</c:if>>도봉구</option>
									<option value="동대문구" <c:if test="${dto.class_area == '동대문구'}">selected</c:if>>동대문구</option>
									<option value="동작구" <c:if test="${dto.class_area == '동작구'}">selected</c:if>>동작구</option>
									<option value="마포구" <c:if test="${dto.class_area == '마포구'}">selected</c:if>>마포구</option>
									<option value="서대문구" <c:if test="${dto.class_area == '서대문구'}">selected</c:if>>서대문구</option>
									<option value="서초구" <c:if test="${dto.class_area == '서초구'}">selected</c:if>>서초구</option>
									<option value="성동구" <c:if test="${dto.class_area == '성동구'}">selected</c:if>>성동구</option>
									<option value="성북구" <c:if test="${dto.class_area == '성북구'}">selected</c:if>>성북구</option>
									<option value="송파구" <c:if test="${dto.class_area == '송파구'}">selected</c:if>>송파구</option>
									<option value="양천구" <c:if test="${dto.class_area == '양천구'}">selected</c:if>>양천구</option>
									<option value="영등포구" <c:if test="${dto.class_area == '영등포구'}">selected</c:if>>영등포구</option>
									<option value="용산구" <c:if test="${dto.class_area == '용산구'}">selected</c:if>>용산구</option>
									<option value="은평구" <c:if test="${dto.class_area == '은평구'}">selected</c:if>>은평구</option>
									<option value="종로구" <c:if test="${dto.class_area == '종로구'}">selected</c:if>>종로구</option>
									<option value="중구" <c:if test="${dto.class_area == '중구'}">selected</c:if>>중구</option>
									<option value="중랑구" <c:if test="${dto.class_area == '중랑구'}">selected</c:if>>중랑구</option>
								</select>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input "
								data-validate="날자를 선택해 주세요">
								<label class="text-black" for="email">수업 날짜</label>
								<c:set var="class_sd" value="${dto.class_sd}"/>
								 <input type="text" id="" class="form-control" value="${fn:substring(class_sd,0,10)}" readonly="readonly"/>
							</div>
						</div>

						<label class="text-black" for="birth">수업 시작시간</label>
						<div class="time_container">
							<div class="form-group">
								<div class="row">
									<div class="col-xs-4 col-md-4 col-sm-4">
										<c:set var="class_starttime" value="${dto.class_starttime}"/>
										<select class="form-control .col-xs-6 .col-md-4"
											id="">
											<option selected="selected">${fn:substring(class_starttime, 0, 2)}시</option>
										</select>
									</div>
									<div class="col-xs-4 col-md-4 col-sm-4">
										<select class="form-control .col-xs-6 .col-md-4"
											id="">
											<option selected="selected">${fn:substring(class_starttime, 2, 4)}분</option>
										</select>
									</div>
								</div>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="수업시간을 정해수세요">
								<label class="text-black" for="class_time">희망 수업 시간(분)</label> <input
									type="number" class="form-control" id="class_time"
									name="class_time" value="${dto.class_time}" readonly="readonly">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="인원을 정해수세요">
								<label class="text-black" for="class_participation">인원
									설정</label> <input type="number" class="form-control"
									name="class_participation" value="${dto.class_participation}" readonly="readonly">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="수업료를 입력해주세요">
								<label class="text-black" for="class_price">금액 설정</label> <input
									type="number" class="form-control" name="class_price" value="${dto.class_price}" readonly="readonly">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input"
								data-validate="수업 상세내용을 적어주세요.">
								<label class="text-black" for="class_detail">수업 상세내용</label>
								<textarea class="form-control" rows="" cols=""
									name="class_detail" value="" >${dto.class_detail}</textarea>
							</div>
						</div>

						<div class="row form-group" style="text-align: center;">
							<div class="col-md-12">
								<input type="submit" value="강의수정 "
									class="btn btn-primary py-2 px-4 text-white"
									style="width: 100%;">
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
  <script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
  
  <script src="resources/js/AddClass_C.js"></script>
</body>

</html>
