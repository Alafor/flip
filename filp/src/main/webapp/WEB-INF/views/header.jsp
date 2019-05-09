<%@page import="com.hk.flip.dtos.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=utf-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
/*  String Msg_to =  ((MemberDto)request.getSession().getAttribute("logInMember")).getMember_email();  */

%>



<!DOCTYPE html>
<header class="site-navbar container py-0 bg-white navbar-fixed-top"
	 role="banner">
<!-- style="position: fixed;" -->
	<!-- <div class="container"> -->
	<div class="row align-items-center">
		<div class="col-6 col-xl-2">
			<h1 class="mb-0 site-logo">
				<a href="main.do" class="text-black mb-0"><img alt="로고"
					src="resources/images/로고.png"></a>
			</h1>
		</div>
		<div class="col-12 col-md-10 d-none d-xl-block">
			<nav class="site-navigation position-relative text-right "
				role="navigation">
				<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
					<li>
						<form action="searchlist.do" method="get">
							<div class="input-group mb-3 ">
								<input type="text"
									class="form-control text-black bg-transparent "
									style="border-left-radius: 10px; min-width: 320px;" name="search" placeholder="검색어를 입력하세요.">
								<div class="input-group-append">
									<button class="btn btn-primary text-white rounded">Search</button>
								</div>
							</div>
						</form>
					</li>
					<c:if test="${logInMember eq null}">
						<li class="ml-xl-3 login"><a href="loginform.do"><span
								class="border-left pl-xl-4"></span><b>로그인</b></a></li>
						<li><a href="signupform.do"><b>회원가입</b></a></li>
						<li><a href="t_signupform.do"><b>강사가입</b></a></li>
						<!-- <li><a href="#" class="cta"><span
								class="bg-primary text-white rounded">강의등록</span></a></li> -->
					</c:if>
					<c:if test="${logInMember ne null}">
						<li class="ml-xl-3 login" ><a href="mypage.do"><span
								class="border-left pl-xl-3" ></span><b>${logInMember.member_name}</b></a></li>
								<span id="count" class="badge bg-theme"></span>

						<li><a href="logout.do"><b>로그아웃</b></a></li>
						<li><a href="ansboard.do"><b>문의게시판</b></a></li>
						<li><a href="addclassform.do" class="cta">
						<span class="bg-primary text-white rounded">강의등록</span></a></li>	
					</c:if>
				</ul>
			</nav>
		</div>
		<div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right"
			style="position: relative; top: 3px;">
			<a href="#" class="site-menu-toggle js-menu-toggle text-black"> <span
				class="icon-menu h3"></span></a>
		</div>
	</div>
</header>

<script type="text/javascript">
    var wsUri = "ws://localhost:8888/flip/count";
    function send_message() {
        websocket = new WebSocket(wsUri);
        websocket.onopen = function(evt) {
            onOpen(evt);
        };
        websocket.onmessage = function(evt) {
            onMessage(evt);
        };
        websocket.onerror = function(evt) {
            onError(evt);
        };
    }
    function onOpen(evt) 
    {
       websocket.send("${logInMember.member_email}");
    }
    function onMessage(event) {
    		$('#count').append(evt.data);
    }
    function onError(evt) {
    }
    $(document).ready(function(){
    		send_message();
    });
 </script>