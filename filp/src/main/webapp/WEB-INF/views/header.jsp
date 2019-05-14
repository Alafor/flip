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
<%MemberDto memberDto = (MemberDto)request.getSession().getAttribute("logInMember"); %>
<%
/*  String Msg_to =  ((MemberDto)request.getSession().getAttribute("logInMember")).getMember_email();  */

%>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
<style type="text/css">
	 .ui-menu{
  padding:0px; position: relative; 
  }
     .ui-menu-item{
     list-style:none;
   	 border:1px solid #ced4da; border-top:0px; border-left:0px;
     background-color:white;
     }
     .ui-menu-item-wrapper{
        background-color: #f8f9fc;
        list-style:none;
        font-size:16px;
        width:260px;
        padding-left:10px;
     }
</style>


<!DOCTYPE html>
<header class="site-navbar container py-0 bg-white navbar-fixed-top"
	 role="banner" style="z-index:1;">
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
						<form action="searchCount.do" method="get">
							<div class="input-group mb-3" style="border-left-radius: 10px;">
								<input type="text" id="autos"
									class="form-control text-black bg-transparent "
									 name="search" placeholder="검색어를 입력하세요." style="width:280px;padding-left:20px;">
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
						<li><a href="logout.do"><b>로그아웃</b></a></li>
						<li><a href="ansboard.do"><b>문의게시판</b></a></li>
						<li><a href="#" onclick="showMsg();"><img alt="message" src="resources/images/message.png" style="width: 20px; height: 20px; position:relative;">
						<span class="nav-counter" id="count1"  style="position:absolute; top: 22px;right: 147px; min-width: 6px;height: 20px;line-height: 20px; margin-top: -11px; padding: 0 6px;
						 font-weight: normal; font-size: small;color: white;text-align: center; text-shadow: 0 1px rgba(0, 0, 0, 0.2); border-radius: 11px;"></span></a></li>
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
	<%if(memberDto !=null){ %>
	<input type="hidden" value='<%=memberDto.getMember_email()%>' id="ws_email">
	<%} %>
</header>
<script type="text/javascript">
    var wsUri = "ws://localhost:8888/flip/count.do";
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
    	var email = $('#ws_email').val();
    	/* alert(email); */
       websocket.send(email);
    }
    function onMessage(evt) {
    	 /* alert(evt.data);  */
//     	alert($('#count1').prop("tagName"));  
    	 	if(evt.data!=0){
    		$('#count1').append(evt.data);
    		$('#count1').css("background-color","#e23442");
    		$('#count1').css("border","1px solid #911f28");
    	 	}
    	 
    }
    function onError(evt) {
    }
    $(document).ready(function(){
    	var email = $('#ws_email').val();
    	if(email ==null||email==""){

    	}else{
    		send_message();
    	}
    });
    
 </script>
<script type="text/javascript">
	function showMsg() {
		
		window.open('myMsg.do', '쪽지함', 'width=920,height=500,toolbars=no,scrollbars=no,resizable=0');
	}
</script>
<script type="text/javascript">
$(function() {
	//input의 id를 autocomplete한다.
	$( "#autos").autocomplete({
		source : function(request, response){
			$.ajax({
				type:"post",
				dataType:"json",                  //data를 json으로 return 받음.
				url:"autoComplete.do",          //json으로 데이터를 반환해야한다.
				data:{"search" : request.term},
				success:function(data){
					response($.map(data, function(item){     //function의 item에 data가 바인딩된다.
						return{
							//기본적으로 label과 value를 사용하지만 custom 변수를 선언해서 사용 가능하다. ui.item.변수명으로 사용가능함.
							//data는 반환한 배열, data[i].USER_INFO 및 아래 선언된 KEY값이 들어가있다.
							label:item,
							value:item
						}
					}));
				$(".ui-menu").css({
					"width":"268px",
					"z-index":"2"
					});
				$(".ui-widget-content").css({
					"border":"0px"
				})
				$(".ui-menu-item").css({
					"width":"268px",
					"border":"1px solid #a6c9e2",
					"margin-left":"10px"
				});	
				}
			})
		},
		minLength:1               //1글자 이상 입력해야 autocomplete이 작동한다.
		/* focus:function(event, ui){return false;} //한글입력시 포커스이동하면 서제스트가 삭제되므로 focus처리 */
	});
});

</script>