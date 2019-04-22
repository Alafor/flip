<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
	#ansreplyForm{display: none;}
	#container{
		height: 336px;
		width: 800px;
		margin: 0 auto;
		overflow: auto;
	}
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
						상세<span class="text-warning">보기</span>
					</h2>
					<p class="color-black-opacity-5">VIEW&amp;DETAIL</p>
				</div>
			</div>
 <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">
	<table border="1">
		<tr>
			<th>이름</th>
			<td>${dto.member_name}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${dto.board_title}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60"  name="board_content">${dto.board_content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="수정" onclick="ansupdateForm()"/>
				<input type="button" value="삭제" onclick="ansdelboard()"/>
				<input type="button" value="답글" onclick="ansreplyForm()"/>
				<input type="button" value="글목록" onclick="location.href='ansboard.do'"/>
			</td>
		</tr>
	</table>
	
	
	
	
	<div id="ansreplyForm">
		<h1>답글달기</h1>
		<form action="ansreplyboard.do" method="post">

			<input type="hidden" name="board_seq" value="${dto.board_seq}"/>
			<table border="1">
				
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="board_title">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="10" cols="60" name="board_content"></textarea>
					</td>
				</tr>
				<tr>
			<th>비밀글</th>
			<td><input type="radio" name="board_secret" value="N" checked="checked">공개</td>
			<td><input type="radio" name="board_secret" value="Y">비공개</td>
		</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="답글등록"> 
						<input type="button" value="목록가기"
						onclick="location.href='ansboard.do'" /></td>
				</tr>
			</table>
		</form>
		</div>
		</div>
	</div>
</div>
</div>

	<script type="text/javascript">
	function ansupdateForm(){
		location.href="ansupdateform.do?seq=${dto.board_seq}";
	}
	function ansdelboard() {
		location.href="ansmuldel.do?seq=${dto.board_seq}";
	}
	function ansreplyForm(){
		$("#ansreplyForm").toggle(800);//show(),hide(),toggle()
		var replyPosition=$("#ansreplyForm").offset().top;//div태그의 상단위치를 구함
		$("#container").animate({
			"scrollTop":replyPosition,	
		},2000);
	}
	</script>
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