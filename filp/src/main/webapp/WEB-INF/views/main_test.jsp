<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<title>main test page</title>
</head>
<body>
<div class="listsize" data-listsize="${fn:length(classlist)}"></div>
<c:forEach items="${classlist}" var="classlist" varStatus="seq">
<p>${classlist.class_img}</p>
<p>${classlist.class_member_seq}</p>
<p>${classlist.class_creator_name}</p>
<p>${classlist.profile_img}</p>
<p class="teacherstar" id="teacherstar${seq.count}" data-minority="${classlist.class_rating}"></p>
<p>foreach 실험: ${seq.count}</p>
<p>강의 평균:${classlist.class_rating}</p>
<p>리뷰 카운트: ${classlist.class_review_count}</p>
<p>${classlist.class_name}</p>
<p>${classlist.class_area}</p>
<p>${classlist.class_d_day}</p>
<p>${classlist.class_now_participation}</p>
</c:forEach>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"
	integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
	crossorigin="anonymous"></script>
	<script defer
	src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"
	integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
	crossorigin="anonymous"></script>
<script src="resources/js/star.js" defer="defer"></script>
</body>
</html>