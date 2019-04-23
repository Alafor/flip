<!-- review.jsp 테스트용 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 작성</title>
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
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}
</style>
<script type="text/javascript">
$(function(){
	$('.starRev > span').mouseenter(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
	$(".starR1,.starR2").mouseover(function(){
		$("input[name=rating]").val(($(".on").length)/2); 		
	});
});

	
</script>
</head>
<body>
<h1></h1>
<div class="starRev">
  <span class="starR1 on">별1_왼쪽</span>
  <span class="starR2">별1_오른쪽</span>
  <span class="starR1">별2_왼쪽</span>
  <span class="starR2">별2_오른쪽</span>
  <span class="starR1">별3_왼쪽</span>
  <span class="starR2">별3_오른쪽</span>
  <span class="starR1">별4_왼쪽</span>
  <span class="starR2">별4_오른쪽</span>
  <span class="starR1">별5_왼쪽</span>
  <span class="starR2">별5_오른쪽</span>
<!--  별점 점수 계산 for  hasClass(on) -->
<!-- 계산할때 돌릴 for문 function sumweek(selectweek) {
//       var row = $(selectone).parent().parent();
//       var hour = row.children().eq(0).children().eq(0).val
//       var min = row.children().eq(1).children().eq(0).val
//       alert("hour:::"+hour+"   ----------------min"+min);
      if($(selectweek).hasClass('active')){
         $(selectweek).removeClass('active');
      }else{
         $(selectweek).addClass('active');      
      }      
      var acti = $(selectweek).parent().children('.active');
      $('#class_week').val("");
      var weekhidden= "";
      
      
      for(i=0;i<acti.length;i++){
         if(i==0){
         weekhidden+=""+$(acti[i]).val();
         }else {
         weekhidden+=","+$(acti[i]).val();            
         }
      }
      alert(acti.length);
      $('#class_week').val(weekhidden);
   } -->
</div>
    	
	<!-- <div id="dropDownSelect1"></div> -->
	
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