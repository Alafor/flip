/**
 * 
 */
//메인 리스트 아작스 구현
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
				var studentAjax=$(".active .studentAjax");
				var studyAjax=$(".active .studyAjax");
				
				if(classList!=""){
					for(var i=0;i<classList.length;i++){
						instructorAjax.eq(i).find(".category").text(classList[i].class_creator_name);
						instructorAjax.eq(i).find("h3 > a").text(classList[i].class_name);
						instructorAjax.eq(i).find(".teacherstar").attr("data-minority",classList[i].class_member_rating);
						instructorAjax.eq(i).find(".review").text("("+classList[i].class_review_count+" Review)");
						instructorAjax.eq(i).find("address").text(classList[i].class_area);
						instructorAjax.eq(i).find(".img").css({"background":'url(resources/img/class/'+classList[i].class_img+')'});
					};
				}/*else{
					$('.c-remove').remove();
				}*/
				if(wantList!=""){
					
					for(var i=0;i<wantList.length;i++){
						/*$('.w-refresh').html(*/
								/*'<div class="owl-carousel nonloop-block-13 remove">'
								+'<div class="d-block d-md-flex listing vertical studentAjax">'
								+ '<a href="cdetail.do?class_seq=' + wantList[i].seq 
								+ '" class="img d-block"style="background-image: url("resources/images/img_4.jpg")"></a>'
								+'<div class="lh-content">'
								+'<span class="category">'+ wantList[i].class_creator_name +'</span>'
								+'<span class="instructor_img">등록자 사진</span> <a href="insertwhishlist.do" class="bookmark"><span class="icon-heart"></span></a>'
								+'<h3><a href="cdetail.do?class_seq='+wantList[i].seq+'">'+wantList[i].class_name+'</a></h3>'
								+'<address>'+wantList[i].class_area+'</address></div></div></div>')*/
						studentAjax.eq(i).find(".category").text(wantList[i].class_creator_name);
						studentAjax.eq(i).find("h3 > a").text(wantList[i].class_name);
						studentAjax.eq(i).find("address").text(wantList[i].class_area);
						instructorAjax.eq(i).find(".img").css({"background":'url(resources/img/class/'+wantList[i].class_img+')'});
					};
				}//else{
//					$('.w-remove').remove();
//				}
				if(studyList!=""){
					for(var i=0;i<studyList.length;i++){
						studyAjax.eq(i).find(".category").text(studyList[i].class_creator_name);
						studyAjax.eq(i).find("h3 > a").text(studyList[i].class_name);
						studyAjax.eq(i).find("address").text(studyList[i].class_area);
						instructorAjax.eq(i).find(".img").css({"background":'url(resources/img/class/'+studyList[i].class_img+')'});
					}
				}/*else{
					$('.s-remove').remove();
				}*/
			},
			error: function(data,status,xhr){
				alert("통신실패");
			}
		});
		$(".teacherstar").trigger("click");
	});
	
	
});