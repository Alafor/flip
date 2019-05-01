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
  <title>Flip 관리자 페이지</title>

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
            <h1 class="h3 mb-0 text-gray-800">관리자 페이지</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div>

          <!-- Content Row -->
          <div class="row justify-content-center">
				<div class="col-md-7 mb-5" >
					<form class="p-5 bg-white validate-form" action="class_add_C.do"
						onsubmit="return chkOkTimes()" method="post"
						enctype="multipart/form-data"
						style="border: 2px solid #30e3ca; border-radius: 20px;">
						<input type="hidden" name="class_type" value="C"> <input
							type="hidden" id="class_sd" name="class_sd" value=""> <input
							type="hidden" id="class_cd" name="class_cd" value="">
						<div class="row form-group">
							<div class="col-md-12">
								<label class="text-black" for="class_depa">카테고리</label> <select
									class="form-control" name='class_depa'>
									<option value="exercise">운동</option>
									<option value="music">음악</option>
									<option value="photo">사진</option>
									<option value="yolo">yolo</option>
									<option value="investment">재테크</option>
									<option value="beauty">뷰티</option>
									<option value="language">외국어</option>
									<option value="videoedit">영상편집</option>
									<option value="it">IT</option>
									<option value="design">디자인</option>
									<option value="cook">요리</option>
								</select>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="이름을 입력해주세요">
								<label class="text-black" for="class_name">이름</label> <input
									type="text" class="form-control" name="class_name">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input"
								data-validate="수업 요약을 입력해주세요">
								<label class="text-black" for="class_info">수업 요약</label>
								<textarea rows="5" cols="" class='form-control'
									name="class_info"></textarea>
							</div>
							<div id="message" style="margin-left: 20px; color: red;"></div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<label class="text-black" for="class_area">지역 설정</label> <select
									class="form-control" name='class_area'>
									<option value="강남구">강남구</option>
									<option value="강동구">강동구</option>
									<option value="강북구">강북구</option>
									<option value="강서구">강서구</option>
									<option value="관악구">관악구</option>
									<option value="광진구">광진구</option>
									<option value="구로구">구로구</option>
									<option value="금천구">금천구</option>
									<option value="노원구">노원구</option>
									<option value="도봉구">도봉구</option>
									<option value="동대문구">동대문구</option>
									<option value="동작구">동작구</option>
									<option value="마포구">마포구</option>
									<option value="서대문구">서대문구</option>
									<option value="서초구">서초구</option>
									<option value="성동구">성동구</option>
									<option value="성북구">성북구</option>
									<option value="송파구">송파구</option>
									<option value="양천구">양천구</option>
									<option value="영등포구">영등포구</option>
									<option value="용산구">용산구</option>
									<option value="은평구">은평구</option>
									<option value="종로구">종로구</option>
									<option value="중구">중구</option>
									<option value="중랑구">중랑구</option>
								</select>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input "
								data-validate="날자를 선택해 주세요">
								<label class="text-black" for="email">수업 날짜</label> <input
									type="text" id="daterange" class="form-control" value="" />
							</div>
						</div>

						<label class="text-black" for="email">수업 요일</label>
						<div class="row form-group">
							<div class="col-md-12 validate-input "
								data-validate="날자를 선택해 주세요">
								<button type="button" class="btn btn-info"
									onclick="sumweek(this);" value="2">월</button>
								<button type="button" class="btn btn-info"
									onclick="sumweek(this)" value="3">화</button>
								<button type="button" class="btn btn-info"
									onclick="sumweek(this)" value="4">수</button>
								<button type="button" class="btn btn-info"
									onclick="sumweek(this)" value="5">목</button>
								<button type="button" class="btn btn-info"
									onclick="sumweek(this)" value="6">금</button>
								<button type="button" class="btn btn-info"
									onclick="sumweek(this)" value="7">토</button>
								<button type="button" class="btn btn-info"
									onclick="sumweek(this)" value="1">일</button>
								<input type="hidden" id="class_week" name="class_week">
							</div>
						</div>

						<label class="text-black" for="birth">수업 시작시간</label>
						<div class="time_container">
							<div class="form-group">
								<div class="row">
									<div class="col-xs-4 col-md-4 col-sm-4">
										<select class="form-control .col-xs-6 .col-md-4"
											id="class_starthour1" onchange='sumclasstime(this)'>
										</select>
									</div>
									<div class="col-xs-4 col-md-4 col-sm-4">
										<select class="form-control .col-xs-6 .col-md-4"
											id="class_startmin1" onchange='sumclasstime(this)'>
										</select>
									</div>
									<input type='hidden' name='class_starttime'> 
									<a href='#' class='col-xs-1 col-md-1 col-sm-1'
										onclick='chkClassTime(this); return false'> <i
										style='display: inline-block; margin-top: 10%;'
										class='flaticon-done icon-2x'></i></a>
									<span style="padding-left: 5px;">시간체크</span>
								</div>
							</div>
						</div>
						<div class="row form-group text-center">
							<div class="col-md-12 validate-input .center-block">
								<button class="btn" type="button" onclick="addClassTime()">수업
									시간 추가</button>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="수업시간을 정해수세요">
								<label class="text-black" for="class_time">수업 시간(분)</label> <input
									type="number" class="form-control" id="class_time"
									name="class_time" placeholder="수업 진행 시간(분)" onchange="changeOkTimes()">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="인원을 정해수세요">
								<label class="text-black" for="class_participation">인원
									설정</label> <input type="number" class="form-control"
									name="class_participation" placeholder="최소 모집 인원">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 validate-input" data-validate="수업료를 입력해주세요">
								<label class="text-black" for="class_price">금액 설정</label> <input
									type="number" class="form-control" name="class_price">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 validate-input"
								data-validate="수업 상세내용을 적어주세요.">
								<label class="text-black" for="class_detail">수업 상세내용</label>
								<textarea class="form-control" rows="" cols=""
									name="class_detail" placeholder="수업 상세내용을 적어주세요."></textarea>
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
											<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
												class=" avatar img-fluid mb-6" " alt="avatar">
											<br>
											<br>
											<h6>
												<b>프로필</b>
											</h6>
									</div>
								</div>
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

						<div class="row form-group" style="text-align: center;">
							<div class="col-md-12">
								<input type="submit" value="강의등록 "
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

</body>

</html>
