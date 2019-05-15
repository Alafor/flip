   	var time1 = "";
    	var time2 = "";
   	$(document).ready(function() {
   	    var readURL = function(input) {
   	        if (input.files && input.files[0]) {
   	            var reader = new FileReader();

   	            reader.onload = function (e) {
   	                $('.avatar').attr('src', e.target.result);
   	                $('.avatar').attr('data-isImg', "OK");
   	            }
   	    
   	            reader.readAsDataURL(input.files[0]);
   	        }
   	    }
   	    

   	    $(".file-upload").on('change', function(){
   	        readURL(this);
   	    });
   	});
    $(function(){
    	for(var j=0;j<60;j++){
    		var min1 = "";
    		if(j<10){
    			min1="0"+j;
    		}
    		else{
    			min1=""+j;	    		
    		}
    		
    		time2 +="<option value='"+min1+"'>"+min1+" 분 </option>";
    	}
    	for(var i=0;i<24;i++){
    		var time = "";
    		if(i<10){
    			time="0"+i;
    		}else{
    			time=i+"";
    		}
    		time1 +="<option value='"+time+"'>"+time+" 시 </option>";
    	}
    	
    	var starttime1 = $("#class_starthour1").html(time1);
    	var starttime2 = $("#class_startmin1").html(time2);
    	
    });
    $(function() {
    	var now = new Date();
    	var after3 = new Date(now.getFullYear(),now.getMonth(),now.getDate()+3);
    	var str = after3.getFullYear()+"/"+(after3.getMonth()+1)+"/"+after3.getDate();
      $("#daterange").daterangepicker({
    	  "startDate":str,
    	  "endDate":str,
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
    	  $("#class_sd").val(start.format('YYYY/MM/DD')) ;
    	  $("#class_cd").val(end.format('YYYY/MM/DD')) ;
    	  changeOkTimes();
      });
    });							
    function addClassTime() {
    	var $div = $("<div class='form-group'> <div class='row'> <div class='col-xs-4 col-md-4 col-sm-4'> <select class='form-control .col-xs-6 .col-md-4' onchange='sumclasstime(this)'>"+time1
    			+"</select> </div> <div class='col-xs-4 col-md-4 col-sm-4'> <select class='form-control .col-xs-6 .col-md-4' onchange='sumclasstime(this)'>"+time2
	                 +" </select> </div>"
	                 +"<input type='hidden' name='class_starttime'>"
	                 +"<a href='#' class='col-xs-1 col-md-1 col-sm-1' onclick='chkClassTime(this); return false'> <i style='display:inline-block; margin-top:10%;' class='flaticon-done icon-2x'></i></a>"
	                 +"<span style='padding-left: 5px;'>시간체크</span>"
	                 +"<a href='#' class='col-xs-1 col-md-1 col-sm-1' onclick='delClassTime(this)' return false'> <i style='display:inline-block; margin-top:10%;' class='icon-remove-sign icon-2x'></i></a>"
	                 +" </div> </div>");
    	$('.time_container').append($div);
	} 
    function delClassTime(th) {
		$(th).parent().parent().remove();
	}
    function sumclasstime(selectone) {
// 		var row = $(selectone).parent().parent();
// 		var hour = row.children().eq(0).children().eq(0).val
// 		var min = row.children().eq(1).children().eq(0).val
// 		alert("hour:::"+hour+"   ----------------min"+min);
		var row = $(selectone).parent().parent();
		var hour = row.children().eq(0).children().eq(0).val();
		var min = row.children().eq(1).children().eq(0).val();
		var hidden = ""+hour+""+min;
		row.children().eq(2).val(hidden);
		changeOkTime(row.children().eq(2));
	}
    function sumweek(selectweek) {
// 		var row = $(selectone).parent().parent();
// 		var hour = row.children().eq(0).children().eq(0).val
// 		var min = row.children().eq(1).children().eq(0).val
// 		alert("hour:::"+hour+"   ----------------min"+min);
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
			weekhidden+="|"+$(acti[i]).val();				
			}
		}
		changeOkTimes();
		$('#class_week').val(weekhidden);
	}
    
    
    function chkClassTime(chk){
   	var row = $(chk).parent().parent();
   	var class_starttime = row.children().eq(0).children().eq(2).val();
   	var class_sd = $("#class_sd").val();
   	var class_cd = $("#class_cd").val();
   	var class_time = $("#class_time").val();
   	var class_week = $("#class_week").val();
   	
   	
   	if(class_starttime==""){
   		alert("수업 시작시간을 선택해 주세요");
   		 $(row.children().eq(0).children().eq(2)).focus();
   		return 0;
   	}
   	if(class_sd==""|class_cd==""){
   		alert("수업 날짜를 선택해 주세요");
   		return 0;
   	}
   	if(class_week==""){
   		alert("수업 요일을 선택해 주세요");
   		$("#class_week").focus();
   		return 0;
   	}
   	
   	if(class_time==""){
   		alert("수업 시간을 정해주세요");
   		 $("#class_time").focus();
   		return 0;
   	}else{
//   		alert("정상작동---class_sd:"+class_sd+"   class_cd:"+class_cd+"  class_time: "+class_time
//   				+"class_starttime:" +class_starttime);
   	}
   	
//    	var oktimes = $(".time_container input");
//    	for(var i =0;i<oktimes.length;i++){
//    		if(!(oktimes[i].hasClass("timeOk"))){
//    			return false;
//    		}
//    	}
   	var oktimes = $("input.timeOk");
   	if(!(oktimes.length==0)){
   		var oriarr = new Array();
   		var oridate = new Date();
   		var oridate2 = new Date();
//   		alert(Number(class_starttime.substr(0, 2))+class_starttime.substr(2));
   		oridate.setHours(Number(class_starttime.substr(0, 2)));
   		oridate2.setHours(Number(class_starttime.substr(0, 2)));
   		oridate.setMinutes(Number(class_starttime.substr(2, 2)));
   		oridate2.setMinutes(Number(class_starttime.substr(2, 2)));
   		oriarr[0] = oridate;
   		oridate2.setMinutes(oridate.getMinutes()+Number(class_time));
   		oriarr[1] = oridate2;
//   		alert("oriarr"+"##"+oriarr[0].getHours()+oriarr[0].getMinutes());
//   		alert("oriarr2"+"##"+oriarr[1]);
   		
   		var arr = new Array();
   	   	arr[0] = new Array();
   	   	arr[1] = new Array();
   	    for(var i =0;i<oktimes.length;i++){
   	    	var hour = Number(oktimes.eq(i).val().substr(0, 2));
   	    	var min = Number(oktimes.eq(i).val().substr(2, 2));
   	    	var date = new Date();
   	    	date.setHours(hour);
   	    	date.setMinutes(min); 
   	    	var date2 = new Date(date.getTime());
//   	    	alert("192줄 hour:"+hour+"  min:"+min);
   	    	arr[0][i] = date;
//   	    	alert("Number(class_time):"+Number(class_time));
   	    	 date2.setMinutes(date.getMinutes()+(Number(class_time)));
   	    	arr[1][i] = date2;
//   	    	alert("arr[0]["+i+"]"+arr[0][i].getHours()+"시"+arr[0][i].getMinutes()+"분");
//   	    	alert("arr[1]["+i+"]"+arr[1][i].getHours()+"시"+arr[1][i].getMinutes()+"분");
   	    }
   	    for(var i =0;i<oktimes.length;i++){
//   	    	alert(arr[0][i].getHours()+"시"+arr[0][i].getMinutes()+"분 "+oriarr[1].getHours()+ "시"+oriarr[1].getMinutes()+"분");
//   	    	alert(arr[1][i].getHours()+"시"+arr[1][i].getMinutes()+"분 "+oriarr[0].getHours()+ "시"+oriarr[0].getMinutes()+"분");
   	    	if(arr[0][i]<=oriarr[1] & arr[1][i]>=oriarr[0]){
   	    		alert(arr[0][i].getHours()+"시"+arr[0][i].getMinutes()+"분의 시간대가 겹칩니다.");
   	    		return;
   	    	}
   	    		
   	    }
   	}

   	 
   	 
   	 
   	 
   	 
   //------------ajax------------
   	 $.ajax({

   		    url: "chkclasstime.do", // 클라이언트가 요청을 보낼 서버의 URL 주소

   		    data: { "class_starttime":class_starttime,"class_sd":class_sd,
   		    	"class_cd":class_cd,"class_time":class_time,"class_week":class_week},                // HTTP 요청과 함께 서버로 보낼 데이터

   		    method: "post",                             // HTTP 요청 방식(GET, POST)

   		    dataType: "json",                         // 서버에서 보내줄 데이터의 타입
   		    
   		    success : function(data) {
   		    	rst =data["rst"];
   		    	if(rst=="개설가능"){
   		    		row.children().eq(0).children().eq(3).children().eq(0).css('color', '#3023CA');
   		    		row.children().eq(0).children().eq(2).addClass("timeOk");
//    		    		alert("개설가능");
   		    	}else{
   		    		alert(rst);
   		    	}
   		    },
   		    error: function(data,status,xhr){
   			alert("통신실패");
   			}
   		});
    }
    
     function chkOkTimes() {
   	  var oktimes = $(".time_container input");
   	  for(var i=0;i<oktimes.length;i++){
   		 if(!(oktimes.eq(i).hasClass("timeOk"))){
   			 alert("강의 시간 체크를 눌러주세요");
   			 oktimes.eq(i).focus();
   			 return false;
   		 }
   	  }
      var imgg = $('.avatar').attr('data-isImg');
      if(imgg != 'OK'){
      	alert("사진을 넣어주세요");
      	return false;
      }
   	  return true;
   	  
     }
     function changeOkTimes() {
   	  var oktimes = $(".time_container input");
//   	  alert("changeOkTimes 실행 "+oktimes.length+"개");
   	  for(var i=0;i<oktimes.length;i++){
   		 oktimes.eq(i).removeClass("timeOk")
   		$(".flaticon-done").css('color', 'red');
   		 
   		 }
   	 }
     function changeOkTime(hinput) {
   	  hinput.removeClass("timeOk");
   	  $(hinput).next().children(".flaticon-done").css('color', 'red');
     }

     