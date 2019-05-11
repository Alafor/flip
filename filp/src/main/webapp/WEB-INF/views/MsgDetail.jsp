<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html >
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
	
	/* #container{
		height: 336px;
		width: 800px;
		margin: 0 auto; 
		overflow: auto; */
	}
</style>
</head>
<body>


		
	

   <div class="site-section bg-white">
<div id="container">

<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						메시지<span class="text-warning">보기</span>
					</h2>
					<p class="color-black-opacity-5">VIEW&amp;DETAIL</p>
				</div>
			</div>
 <div class="row justify-content-center">
     <div class="col-md-8 mb-6"  data-aos="fade" style="border: 1px solid #30e3ca; border-radius: 20px;padding: 30px;""> 
	<table class="table  " style="margin: 0 auto;">
	<col width="18%"><col width="82%">
		<tr>
			<td>보낸사람</td>
			<td>${dto.member_name}</td>
		</tr>
		<tr>
			<td>보낸시간</td>
			<td>${dto.msg_regdate}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea class="form-control col-mb-5 mb-5" rows="7"  cols="70"  name="board_content" readonly="readonly">${dto.msg_content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:right; ;">
				
				<input type="button" value="삭제" class="btn btn-primary text-white" style="width: 12%; text-align: center;" onclick="delMsg()"/>			
				<input type="button" value="확인" class="btn btn-primary  text-white" style="width: 12%; text-align: center;" onclick="location.href='myMsg.do'"/>
			</td>
		</tr>
	</table>
	

		</div>
	</div>
</div>
</div> 
<script type="text/javascript">
	
	function delMsg() {
		location.href="muldelMsg.do?chk=${dto.msg_seq}";
	}
	
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