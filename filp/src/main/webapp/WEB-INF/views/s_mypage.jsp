<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>${member.member_name}</p>
<p>${member.member_email}</p>
<p>${member.member_phone}</p>
<p>${member.member_email}</p>
<p>${member.member_email}</p>

	<ul class=”navnav-tabs”><!–nav/ nav-tab 클래스를 추가하면 탭스타일로 나타납니다.–>
		<li class=”active”><a href=“#tab1″ data-toggle=”tab” onclick="myclass(myclass)">내수강보기</a></li>
		<li><a href=“#tab2″ data-toggle=”tab” onclick="myclass(mystudy)">내스터디 보기</a></li><!–탭메뉴를 사용하기위해 data-toggle=”tab”을 지정해줍니다.–>
		<li><a href=”#tab3″ data-toggle=”tab” onclick="myclass(want)">원해요 보기</a></li>
		<li><a href=”#tab4″ data-toggle=”tab” onclick="myclass(wishlist)">위시리스트 보기</a></li>
	</ul>

	<div class=”tab-content”>
		<!–탭내용을 보여주는 곳에 ‘tab-content’ 클래스를걸어줍니다–>
		<div class=”tab-pane active”id=“tab1″>
			<!–nav-tab부분 링크부분과 탭내용을 보여줄 id를 맞춰줍니다–>
			<p>home 부분입니다.</p>
		</div>
		<div class=”tab-pane” id=“tab2″>
			<p>menu1 부분입니다.</p>
		</div>
		<div class=”tab-pane” id=“tab3″>
			<p>menu2 부분입니다.</p>
		</div>
	</div>

</body>
</html>