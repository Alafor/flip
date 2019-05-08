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
<!-- 
<link rel="stylesheet" href="resources/css/aos.css">-->
<link rel="stylesheet" href="resources/css/rangeslider.css">

<link rel="stylesheet" href="resources/css/style.css"> 
<style type="text/css">
	table tr th{width:13px;height: 13px;} 
</style>
</head>
<body>

	<div class="row justify-content-center" >
          <div class="col-md-5 mb-6"  data-aos="fade" style="border: 1px solid #30e3ca; border-radius: 20px;padding: 30px;">


	<h1>우선 대충 만들자</h1>
	<form action="" method="post" style="margin: 0 auto;">
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
		<!-- <tr>
			<td>비밀글</td>
			<td><input type="radio" name="board_secret" value="N" checked="checked"> 공개 <input type="radio" name="board_secret" value="Y"> 비공개 </td>
		</tr> -->
		<tr>
			<td colspan="2">
				<div class="row form-group" style="text-align:right; ;">
                <div class="col-md-12">
                  <input type="submit" value="글등록" class="btn btn-primary  text-white" style="width: 20%; " > 
                  <input type="button" value="목록가기" class="btn btn-primary text-white" style="width: 20%;" onclick="location.href='mypage.do'">
                </div>
              </div>
			</td>
		</tr>
	</table>
</form>

</div>
</body>
</html>