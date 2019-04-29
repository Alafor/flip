<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의글 쓰기</title>
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
<style type="text/css">
	/* table tr th{width:13px;height: 13px;} */
</style>
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
    </div>
	<!-- header -->
		<jsp:include page="../header.jsp"/>
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

<div class="site-section bg-light">
<div id="container">

<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						문의<span class="text-warning">게시판</span>
					</h2>
					<p class="color-black-opacity-5">CONTACT&amp;US</p>
				</div>
			</div>
 <div class="row justify-content-center" >
          <div class="col-md-5 mb-6"  data-aos="fade" style="border: 1px solid #30e3ca; border-radius: 20px;padding: 30px;">



	<form action="ansinsert.do" method="post" style="margin: 0 auto;">
	<table class="table" >
	<col width="18%"><col width="82%">
	
		<tr>
			<td>제목</td>
			<td><input type="text" name="board_title" class="form-control"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea class="form-control col-mb-5 mb-5" rows="10"  cols="70" name="board_content"></textarea></td>
		</tr>
		<tr>
			<td>비밀글</td>
			<td><input type="radio" name="board_secret" value="N" checked="checked"> 공개 <input type="radio" name="board_secret" value="Y"> 비공개 </td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="row form-group" style="text-align:right; ;">
                <div class="col-md-12">
                  <input type="submit" value="글등록" class="btn btn-primary  text-white" style="width: 20%; " > 
                  <input type="button" value="목록가기" class="btn btn-primary text-white" style="width: 20%;" onclick="location.href='ansboard.do'">
                </div>
              </div>
			</td>
		</tr>
	</table>
</form>

</div>
</div>
</div>
</div>


<div>
	<jsp:include page="../footer.jsp" />
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