<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="resources/css/aos.css">
<link rel="stylesheet" href="resources/css/rangeslider.css">
<link rel="stylesheet" href="resources/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>
	<div class="row mb-5">
		<div class="col-md-7 text-left border-primary">
			<h2 class="font-weight-light text-primary">
				<b>검색<span class="text-warning">결과</span></b>
			</h2>
			<p class="color-black-opacity-5">${fn:length(searchList)}개수업</p>
		</div>
	</div>
	<div class="loadlist">
		<c:forEach var="searchList" items="${searchList}" varStatus="seq">
			<div class="d-block d-md-flex listing vertical studentAjax">
				<a href="cdetail.do?class_seq=${searchList.seq}" class="img d-block"
					style="background-image: url('resources/images/img_4.jpg')"></a>
				<div class="lh-content">
					<span class="category">${searchList.class_creator_name}</span> <span
						class="instructor_img">등록자 사진</span> <a href="insertwhishlist.do"
						class="bookmark"><span class="icon-heart"></span></a>
					<h3>
						<a href="cdetail.do?class_seq=${searchList.seq}">${searchList.class_name}</a>
					</h3>
					<div class="mb-0 teacherstar" style="width:90px; float:left;" data-minority="${classlist.class_member_rating}" onclick="gogostar(this)">
					</div>
											<!-- <p class="teacherstar" style="float:left;"></p> -->
					<span class="review" >(${classlist.class_review_count} Reviews)</span>
					<address>${searchList.class_area}</address>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
<script type="text/javascript">
	
</script>
</html>
