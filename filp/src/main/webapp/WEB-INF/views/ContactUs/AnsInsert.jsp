<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<h1>게시글 추가하기</h1>
<form action="ansinsert.do" method="post">
	<table border="1">
	<!-- 	<tr>
			<th>이름</th>
			<td><input type="text" name="member_name"></td>
		</tr> -->
		<tr>
			<th>제목</th>
			<td><input type="text" name="board_title"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60"  name="board_content"></textarea></td>
		</tr>
		<tr>
			<th>비밀글</th>
			<td><input type="radio" name="board_secret" value="N" checked="checked">공개</td>
			<td><input type="radio" name="board_secret" value="Y">비공개</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="글등록">
				<input type="button" value="목록가기" onclick="location.href='ansboard.do'"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>