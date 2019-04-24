<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>   
<%response.setContentType("text/html;charset=utf-8"); %> 
<!DOCTYPE>
<html>
<head>
	<title>회원가입</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
	<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>


<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	<script>
$(function() {
	var now = new Date();
	var after3 = new Date(now.getFullYear(),now.getMonth(),now.getDate()+3);
	var str = after3.getFullYear()+"/"+(after3.getMonth()+1)+"/"+after3.getDate();
  $('input[name="daterange"]').daterangepicker({
	  "startDate": str,
	  "minDate": str,
	  "locale": {
	        "format": "YYYY/MM/DD",
	        "separator": " - ",
	        "applyLabel": "적용",
	        "cancelLabel": "취소",
	        "fromLabel": "부터",
	        "toLabel": "까지",
	        "customRangeLabel": "Custom",
	        "weekLabel": "주",
	        "daysOfWeek": [
	        	'일', '월', '화', '수', '목', '금', '토'
	        ],
	        "monthNames": [
	        	'1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'
	        ],
	        "firstDay": 0
	    },
	  opens: 'left'
  }, function(start, end, label) {
  });
});							
</script>
</head>
<body>
<input type="text" name="daterange" value="" />



</body>	
	data-toggleSelected= "true"
</html>