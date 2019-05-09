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
});

function pagesubmit(selPage){
	var selPageNum = $(selPage).attr("data-page");
	var allPageNum=$(selPage).attr("data-allpage");
	var allPageNumParse=Number(allPageNum);
	var selPageNumParse=Number(selPageNum);
	for(i=1;i<=allPageNumParse;i++){
		if(i==selPageNumParse){
			$("#numId").val(selPageNumParse);
			$("#pages").submit();
		}
	}
}