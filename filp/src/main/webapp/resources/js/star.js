//별점 출력 클릭 트리거
$(function(){
	$(".teacherstar").trigger("click");
});
//별점 출력 
function gogostar(stars) {
	var star1 = $(stars).attr('data-minority');
	var mino = star1;
	//소수점 뒷자리 -->
	var transmino = mino.substr(2, 1);
	//소수점 앞자리 -->
	var integer = mino.substr(0, 1);
	var star = "";
	var halfstar = '<span class="fas fa-star-half" style="color: gold"></span>';
	var minonum = parseInt(transmino);
	for (i = 1; i <= integer; i++) {
		star += '<span class="fas fa-star" style="color:gold;"></span>'
			//						alert(star); -->
	}
	if (transmino >= 5) {
		star += halfstar;
	}
	//				 -->
	stars.innerHTML = star
}


