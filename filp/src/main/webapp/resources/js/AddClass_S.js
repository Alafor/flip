   	var time1 = "";
    	var time2 = "";
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
    	  "singleDatePicker": true,
    	  "startDate":str,
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
    	  $("#class_sd").val(start.format('YYYY/MM/DD'));
    	  $("#class_cd").val(start.format('YYYY/MM/DD'));
    	  $("#class_week").val(findWeek());
    	  
    	  
      });
    });		
    function findWeek() {
        var today = new Date($("#class_sd").val()).getDay();
        return (today+1);
	}
    function sumclasstime(selectone) {
		var row = $(selectone).parent().parent();
		var hour = row.children().eq(0).children().eq(0).val();
		var min = row.children().eq(1).children().eq(0).val();
		var hidden = ""+hour+""+min;
		row.children().eq(2).val(hidden);
	}
    
//    function chkClassTime(chk){
//	   	var row = $(chk).parent().parent();
//	   	var class_starttime = row.children().eq(0).children().eq(2).val();
//	   	var class_sd = $("#class_sd").val();
//	   	var class_cd = $("#class_cd").val();
//	   	var class_time = $("#class_time").val();
//	   	var class_week = $("#class_week").val();
//	   	
//	   	
//	   	if(class_starttime==""){
//	   		alert("수업 시작시간을 선택해 주세요");
//	   		 $(row.children().eq(0).children().eq(2)).focus();
//	   		return 0;
//	   	}
//	   	if(class_sd==""|class_cd==""){
//	   		alert("수업 날짜를 선택해 주세요");
//	   		return 0;
//	   	}
//	   	if(class_week==""){
//	   		alert("수업 요일을 선택해 주세요");
//	   		$("#class_week").focus();
//	   		return 0;
//	   	}
//	   	
//	   	if(class_time==""){
//	   		alert("수업 시간을 정해주세요");
//	   		 $("#class_time").focus();
//	   		return 0;
//	   	}else{
//	   		alert("정상작동---class_sd:"+class_sd+"   class_cd:"+class_cd+"  class_time: "+class_time
//	   				+"class_starttime:" +class_starttime);
//	   	}
//    }

     