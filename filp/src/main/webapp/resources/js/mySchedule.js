$(function(){
	var all_td = $(".alldays");
	for(i=0;i<all_td.length;i++){
		if(i%7==0){
			all_td.eq(i-1).addClass('lastbox');
		}
		
	}
});