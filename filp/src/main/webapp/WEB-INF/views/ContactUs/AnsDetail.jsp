<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
	#replyForm{display: none;}
	#container{
		height: 336px;
		width: 800px;
		margin: 0 auto;
		overflow: auto;
	}
</style>
</head>
<body>
<div id="container">
<h1>게시글 상세 보기</h1>
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
					<th>이름</th>
					<td><input type="text" name="member_name"></td>
				</tr>
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
					<td colspan="2">
						<input type="submit" value="답글등록"> 
						<input type="button" value="목록가기"
						onclick="location.href='ansboard.do'" /></td>
				</tr>
			</table>
		</form>
	</div>
</div>


	<script type="text/javascript">
	function ansupdateForm(){
		location.href="ansupdateform.do?board_seq=${dto.board_seq}";
	}
	function ansdelboard() {
		location.href="ansmuldel.do?chk=${dto.board_seq}";
	}
	function ansreplyForm(){
		$("#ansreplyForm").toggle(800);//show(),hide(),toggle()
		var replyPosition=$("#ansreplyForm").offset().top;//div태그의 상단위치를 구함
		$("#container").animate({
			"scrollTop":replyPosition,	
		},2000);
	}
	</script>
</body>
</html>