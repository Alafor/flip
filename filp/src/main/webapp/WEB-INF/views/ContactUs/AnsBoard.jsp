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
<jsp:useBean id="util" class="com.hk.utils.Util"/>

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
	<!-- header -->
		<jsp:include page="../header.jsp"/>
		<!-- header 종료 -->
		
	<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(resources/images/아이.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>일상을 뒤집다.플립</h1>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div> 

 <div class="site-section bg-light">
<div id="container">

<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center border-primary">
					<h2 class="font-weight-light text-primary">
						문의<span class="text-warning">게시판</span>
					</h2>
					<p class="color-black-opacity-5">CONTACT&amp;US</p>
				</div>
			</div>
 <div class="row justify-content-center" >
          <div class="col-md-5 mb-3"  data-aos="fade" style="border: 2px solid #30e3ca; border-radius: 20px;">

<form action="ansmuldel.do" method="post" style="margin: 20px;">
<table class="table  " >
	<%-- <col width="20px"> --%>
	<%-- <col width="50px"><col width="100px"><col width="300px"><col width="150px"><col width="60px"> --%>
	 <col width="15%"><col width="20%"><col width="40%"><col width="25%"> 
	<tr>
		<!-- <th><input type="checkbox" name="all" onclick="allSel(this)"/></th> --><!-- this.checked:체크여부를 판단하여 true,false 반환 -->
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
	<!-- 	<th>refer</th>
		<th>step</th>
		<th>depth</th>
		<th>삭제</th> -->
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
					<%-- <td>${dto.board_refer}</td>
					<td>${dto.board_step}</td>
					<td>${dto.board_depth}</td>
					 <td>${dto.readcount}</td> 
					<td>${dto.board_delflag}</td> --%>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	 <tr>
		<td colspan="10">
			<div class="row form-group" style="text-align: center;">
                <div class="col-md-12">
                  <input type="button" value="글쓰기" class="btn btn-primary py-2 px-4 text-white" style="width: 20%; float: right;" onclick="location.href='ansinsertform.do'">
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

<div>
	<jsp:include page="../footer.jsp" />
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