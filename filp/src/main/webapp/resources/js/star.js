/**
 * 
 */
$(function() {
	var mino = $(".teacherstar").attr("data-minority");
	//소수점 뒷자리
	var transmino = mino.substr(2,1);
	//소수점 앞자리
	var integer = mino.substr(0,1);
	var star="";
	var halfstar='<span class="fas fa-star-half" style="color: gold"></span>';
	var minonum=parseInt(transmino);
	for(i=0;i<=integer;i++){
		star+='<span class="fas fa-star" style="color:gold;"></span>'
	}
	if(transmino>=5){
		star+=halfstar;
	}
	$(".teacherstar").html(star);
});