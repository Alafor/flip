$(function(){
	$(".teacherstar").trigger("click");

});
function gogostar(stars) {
	var star1 = stars.getAttribute('data-minority');
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
	var origin = stars.innerHTML
	stars.innerHTML = origin + star
}

$(function(){
	$(".popular-category").on("mouseover",function(){
		var department = $(this).attr("data-category");
		
		$.ajax({
			url:"mainAjax.do",
			method:"post",
			datatype : "json",
			data: {"department": department},
			success: function(categorylist){
				var classList = categorylist["classList"];
				var studyList = categorylist["studyList"];
				var wantList = categorylist["wantList"];
				var instructorAjax=$(".active .instructorAjax");
//				instructorAjax.eq(0).find(".instructor_img").;
//				instructorAjax.eq(0).find(".category").text("kkkkkk");
//				alert($(".active").find(".category").eq(0).text("kkkkkk"));
		for(var i=0;i<classList.length ;i++){
			instructorAjax.eq(i).find(".category").text(classList[i].class_creator_name);
			instructorAjax.eq(i).find("h3 > a").text(classList[i].class_name);
			instructorAjax.eq(i).find("teacherstar").attr("data-minority",classList[i].class_member_rating);
			instructorAjax.eq(i).find("teacherstar").attr("data-minority")
			instructorAjax.eq(i).find(".review").text("("+classList[i].class_review_count+" Review)");
			instructorAjax.eq(i).find("address").text(classList[i].class_area);
		};
	
		},
		error: function(data,status,xhr){
			alert("통신실패");
			}
		});
	});
});