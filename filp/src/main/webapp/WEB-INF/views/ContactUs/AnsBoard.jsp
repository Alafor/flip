<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의게시판</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
 <script type="text/javascript">
function allSel(bool) {//---->allSel(this.checked)체크여부를 bool이 받는다
	//	alert(bool.tagName);
	var kk= bool.parentNode;//parentNode:부모태그구할때,childNodes:자식요소 구할때
	kk.style.backgroundcolor="red";
		var chkbool=bool.checked; //전체 선택 체크박스의 체크여부를 구하고 checked속성을 통해서
		var chks=document.getElementsByName("chk");//[chk,chk,chk....]배열객체
		for (var i = 0; i < chks.length; i++) {//나머지 체크박스 객체들 구한거 길이만큼 반복시키고
			chks[i].checked=chkbool;//배열객체에서 하나씩 꺼내서 체크여부 적용(true/false)
		}
	}
</script>
<style type="text/css">
	table tr td img{width:13px;height: 13px;}
</style>
</head>
<body>
<jsp:useBean id="util" class="com.hk.utils.Util"/>
<h1>글목록보기</h1>

<form action="ansmuldel.do" method="post">
<table border="1">
	<%-- <col width="20px"> --%>
	<col width="50px"><col width="100px"><col width="300px"><col width="150px"><col width="60px">
	<col width="60px"><col width="60px"><col width="60px"><col width="50px">
	<tr style="background-color: yellow;">
		<!-- <th><input type="checkbox" name="all" onclick="allSel(this)"/></th> --><!-- this.checked:체크여부를 판단하여 true,false 반환 -->
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
		<th>refer</th>
		<th>step</th>
		<th>depth</th>
		<th>삭제</th>
	</tr>
	<c:choose>
		<c:when test="${empty list}"><!-- empty  null인지 확인 -->
			<tr><td colspan = "10">---작성된 글이 없습니다.---</td></tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="dto">
				<tr>
					<%-- <td><input type="checkbox" name="chk" value="${dto.board_seq}"/></td> --%>
					<td>${dto.board_seq}</td>
					<td>${dto.member_name}</td>
					<c:choose>
						<c:when test="${dto.board_delflag=='Y'}">
							<td>---삭제된 글입니다.---</td>
						</c:when>
						<c:otherwise>
					       <c:choose>
					        <c:when test="${dto.board_secret=='Y'}">
					        	<td><jsp:setProperty property="arrowNbsp" name="util" value="${dto.board_depth}"/>
					        <jsp:getProperty property="arrowNbsp" name="util"/>
					        <a href="anssecret.do?seq=${dto.board_seq}">${dto.board_title}</a>
					        <img alt="자물쇠" src="resources/images/자물쇠.png">
					        </td>
					        </c:when>
					        
					        <c:otherwise>
					        <td><jsp:setProperty property="arrowNbsp" name="util" value="${dto.board_depth}"/>
					        <jsp:getProperty property="arrowNbsp" name="util"/>
					        <a href="ansdetail.do?seq=${dto.board_seq}">${dto.board_title}</a>
					        </td>
					        </c:otherwise>
					       </c:choose> 	        									
						</c:otherwise>
					</c:choose>
					<td> <fmt:formatDate value="${dto.board_regdate}" pattern="yyyy년MM월dd일"/> </td>
					<td>${dto.board_refer}</td>
					<td>${dto.board_step}</td>
					<td>${dto.board_depth}</td>
					<%-- <td>${dto.readcount}</td> --%>
					<td>${dto.board_delflag}</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	<tr>
		<td colspan="10">
			<input type="button" value="글추가" onclick="location.href='ansinsertform.do'"/>
			
		</td>
	</tr>
</table>
</form>
</body>
</html>