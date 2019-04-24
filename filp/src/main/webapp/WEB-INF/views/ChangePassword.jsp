<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div style="margin: 100px;">
		
		<br>
		<h3>안녕하세요, ${param.member_id} 님</h3>
		<br>
		<p>환영합니다!</p>
		<br>
		<p>임시비밀번호가 정상적으로 전송되었습니다.가입시에 기재하셨던 메일로 전송되었습니다.</p>
		<br>
		<p>비밀번호는 마이페이지에서 수정이 가능합니다.많은 이용 바랍니다.</p>
		<br> <a href="${pageContext.request.contextPath}/main.do">메인 페이지로 이동하기</a>
	</div>

</body>
</html>