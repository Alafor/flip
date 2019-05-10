<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의쪽지함</title>
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


<div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    </div>
	
		
	

 <div class="site-section bg-light">
<div id="container">

<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						나의<span class="text-warning">쪽지함</span>
					</h2>
					<p class="color-black-opacity-5">MY&amp;MESSAGE</p>
				</div>
			</div>
 <div class="row justify-content-center" >
          <div class="col-md-5 mb-3"  data-aos="fade" style="border: 2px solid #30e3ca; border-radius: 20px;">

 <form action="msgmuldel.do" method="post" style="margin: 20px;"> 
<table class="table  " >
	
	 <col width="5%"><col width="10%"><col width="10%"><col width="35%"><col width="30%"><col width="10%"> 
	<tr style="text-align: center;">
		 <th><input type="checkbox" name="all" onclick="allSel(this)"/></th>
		<th>번호</th>
		<th>보낸사람</th>
		<th>내용</th>
		<th>작성일</th>
		<th>읽음여부</th>
	
	</tr>
	<c:choose>
		<c:when test="${empty list}"><!-- empty  null인지 확인 -->
			<tr><td colspan = "10">---받은메시지가없습니다.---</td></tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="msgDto">
				<tr>
					 <td><input type="checkbox" name="chk" value="${msgDto.msg_seq}"/></td>
					<td  style="text-align: center;">${msgDto.msg_seq}</td>
					<td  style="text-align: center;">${msgDto.msg_from}</td>
					<td style="text-align: center;"><a href="msgdetail.do?seq=${msgDto.msg_seq}">${msgDto.msg_content}</a></td>
					<td  style="text-align: center;"> <fmt:formatDate value="${msgDto.msg_regdate}" pattern="yyyy년MM월dd일"/> </td>
					<c:choose>
						<c:when test="${msgDto.msg_read=='Y'}">
							<td style="text-align: center;">읽음</td>
						</c:when>
						<c:otherwise>
					         <td style="text-align: center;">읽지않음</td>    									
						</c:otherwise>
					</c:choose>
					
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	
	
	 <tr>
		<td colspan="10">
			<div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <input type="button" value="글쓰기" class="btn btn-primary text-white" style="width: 20%; float: right;" onclick="location.href='ansinsertform.do'">
                  <input type="submit" value="삭제" class="btn btn-primary text-white" style="width: 20%; float: right;"/>
                </div>
              </div>
		</td>
	</tr>

</table>
</form> 
</div>


</div>
</div>
</div>


	
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