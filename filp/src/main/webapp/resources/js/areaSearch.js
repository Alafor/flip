$(function(){	
	var arealength_c = $('#areasize-c').attr('data-areasize');
	for(i=0;i<arealength_c;i++){
			var areas1 = $('.carea').eq(i).attr('data-area');
			$('.carea').eq(i).text(areas1);
			$('#carea-'+i).val(areas1);
	}
	var arealength_w = $('#areasize-w').attr('data-areasize');
	for(i=0;i<arealength_w;i++){
			var areas2 = $('.warea').eq(i).attr('data-area');
			$('.warea').eq(i).text(areas2);
			$('#warea-'+i).val(areas2);
	}
	var arealength_s = $('#areasize-s').attr('data-areasize');
	for(i=0;i<arealength_s;i++){
			var areas3 = $('.sarea').eq(i).attr('data-area');
			$('.sarea').eq(i).text(areas3);
			$('#sarea-'+i).val(areas3);
	}
	$('label').on('click',function(){
		if($(this).find('.areachk').is(':checked')){
			$(this).css('background-color','#30E3CA');
		}else{
			$(this).css('background-color','#808080');
		};
	});
});