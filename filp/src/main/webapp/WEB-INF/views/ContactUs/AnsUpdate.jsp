<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정하기</title>
</head>
<body>
<h1>게시글 수정하기</h1>
<form action="ansupdate.do" method="post">
<input type="hidden" name="board_seq" value="${dto.board_seq}"/>
<table border="1">
		<tr>
			<th>이름</th>
			<td>${dto.board_member_name}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="board_title" value="${dto.board_title}"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60"  name="board_content" >${dto.board_content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정완료">
				<input type="button" value="목록가기" onclick="location.href='ansboard.do'"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>