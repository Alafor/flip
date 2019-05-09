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
	
	function pagesubmit(){
		var selPageNum = $(this).attr("data-page");
		var allPageNum=$(this).attr("data-allpage");
		for(i=1;i<=allpageNum;i++){
			if(i==selpageNum){
				$("input[name=num]").val(selPageNum);
				$("#pages").submit();
			}
		}
	}
});