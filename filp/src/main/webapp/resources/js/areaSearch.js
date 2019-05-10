$(function(){	
	$('.dropdown').on('click',function(){
		if($('.search-area').css('display')=='none'){
			$('.search-area').slideDown(400);
		}else if($('.search-area').css('display')!='none'){
			$('.search-area').slideUp(400);
		}
	});
	
	$('label').on('click',function(){
		if($(this).find('.areachk').is(':checked')){
			$(this).css('background-color','#30E3CA');
			$(this).find('.areaspan').css('color','#FFF');
		}else{
			$(this).css('background-color','#FFFAFA');
			$(this).find('.areaspan').css('color','#000');
		};
	});
	var datanull = $('.current').find('.hiddenBtn').attr('data-null');
	if(datanull==0){
		$('.search-area').css('display','none');
	}
//	$("#areasize-c").find('input:checkbox[name=selectedarea]').prop('checked',true);
//	$("#areasize-w").find('input:checkbox[name=selectedarea]').prop('checked',true);
//	$("#areasize-s").find('input:checkbox[name=selectedarea]').prop('checked',true);
//	var checkboxlength=$('form').length();
//	alert(checkboxlength);
//	if($("input:checkbox[name=selectedarea]").eq(1).is("checked")==true){
//		alert('check완료');
//	}
//	alert("지역 선택 완료");
	var thisPage_w = Number($("#pages-w").find("#thisPage").attr("data-thisPage"));
	var thisPage_c = Number($("#pages-c").find("#thisPage").attr("data-thisPage"));
	var thisPage_s = Number($("#pages-s").find("#thisPage").attr("data-thisPage"));
	$("#pages-w").find(".buttons").eq(thisPage_w-1).css({
		"border":"solid 1px",
		"border-color":"#DCDBDE",
		"color":"#30E3CA",
		"padding":"0px 5px"});
	$("#pages-c").find(".buttons").eq(thisPage_c-1).css({
		"border":"solid 1px",
		"border-color":"#DCDBDE",
		"color":"#30E3CA",
		"padding":"0px 5px"});
	$("#pages-s").find(".buttons").eq(thisPage_s-1).css({
		"border":"solid 1px",
		"border-color":"#DCDBDE",
		"color":"#30E3CA",
		"padding":"0px 5px"});
});
function pagesubmit(selPage){
	var selPageNum = $(selPage).attr("data-page");
	var allPageNum=$(selPage).attr("data-allpage");
	var formselector=$(selPage).closest("form");
	var allPageNumParse=Number(allPageNum);
	var selPageNumParse=Number(selPageNum);
	if(formselector.find('input[name=classType]').val()=='W'){
		$("#areasize-w").clone().appendTo("#areatest-w");		
	}else if(formselector.find('input[name=classType]').val()=='C'){
		$("#areasize-c").clone().appendTo("#areatest-c");		
	}else if(formselector.find('input[name=classType]').val()=='S'){
		$("#areasize-s").clone().appendTo("#areatest-s");
	}
	for(i=1;i<=allPageNumParse;i++){
		if(i==selPageNumParse){
			formselector.find("#numId").val(selPageNumParse);
			$(formselector).submit();
		}
	}
}