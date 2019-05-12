$(function(){	
	//지역선택창 숨기기
	$('.dropdown').on('click',function(){
		if($('.search-area').css('display')=='none'){
			$('.search-area').slideDown(400);
		}else if($('.search-area').css('display')!='none'){
			$('.search-area').slideUp(400);
		}
	});
	
	//지역선택 css
	$('label').on('click',function(){
		if($(this).find('.areachk').is(':checked')){
			$(this).css('background-color','#30E3CA');
			$(this).find('.areaspan').css('color','#FFF');
		}else{
			$(this).css('background-color','#FFFAFA');
			$(this).find('.areaspan').css('color','#666');
		};
	});
	
	var datanull = $('.current').find('.hiddenBtn').attr('data-null');
	if(datanull==0){
		$('.search-area').css('display','none');
	}
	
	//pageing css 처리
	var thisPage_w = Number($("#pages-w").find("#thisPage").attr("data-thisPage"))%5;
	var thisPage_c = Number($("#pages-c").find("#thisPage").attr("data-thisPage"))%5;
	var thisPage_s = Number($("#pages-s").find("#thisPage").attr("data-thisPage"))%5;
	if(thisPage_w==0){
		thisPage_w=5;
	};
	if(thisPage_c==0){
		thisPage_c=5;
	};
	if(thisPage_s==0){
		thisPage_s=5;
	};
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
	
//	for(i=1;i<=allPageNumParse;i++){
//		if(i==selPageNumParse){
			formselector.find("#numId").val(selPageNumParse);
			$(formselector).submit();
//		}
//	}
}