/**
 * 
 */
//페이지 표시 기능
$(document).ready(function() {
			
			var search = $("#search").attr("data-param");
			var category = $("#category").attr("data-param");
			var classType = $("#classType").attr("data-param");
			
			
//			alert("search: "+search+"category: "+category+"classType: "+classType);
			//클래스 탭메뉴 
			classReset();
			pageLoad();//페이지 로드 시 listload 로드
			
			
			
			//클래스 탭메뉴 종료
				$('ul.tabs li').click(function() {
					var tab_id = $(this).attr('data-tab');//tab-1
					
					$('ul.tabs li').removeClass('current');
					$('.tab-content').removeClass('current');

					$(this).addClass('current');
					$("#" + tab_id).addClass('current');
					if(tab_id == 'tab-1'){
						classType='W'
					}else if(tab_id == 'tab-2'){
						classType='C'
					}else if(tab_id == 'tab-3'){
						classType='S'
					}

					pageLoad();
				});
				
				
				//펑션 모음
				function pageLoad(){
					
					if(!(!classType)&&!search&&!category){
						//메인에서 클래스 타입만 클릭했을때
						$("div.current").load("listload.do?classType="+classType);
					}else if(!(!search) && !classType && !category){
						//검색으로 들어왔을때
						
						$("div.current").load("listload.do?classType=W&search="+search);
					}else if(!(!search) && !(!classType) && !category){
						//검색 후 클래스 클릭했을때
						
						$("div.current").load("listload.do?classType="+classType+"&search="+search);
					}else if(!(!category) && !classType && !search){
						//카테고리 눌러서 들어왔을때
						
						$("div.current").load("listload.do?classType=W&department="+category);
					}else if(!(!category) && !(!classType) && !search){
						//카테고리 클릭 후 클래스 눌렀을때
						$("div.current").load("listload.do?classType="+classType+"&department="+category);
					}
				};
				
				function classReset(){
					if(classType == 'W'){
						var tab_id = $('ul.tabs li').eq(0).attr('data-tab');
						
						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');
						
						$('ul.tabs li').eq(0).addClass('current');
						$("#" + tab_id).addClass('current');
						
					}else if(classType == 'C'){
						var tab_id = $('ul.tabs li').eq(1).attr('data-tab');
						
						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');
						
						$('ul.tabs li').eq(1).addClass('current');
						$("#" + tab_id).addClass('current');
						
					}else if(classType == 'S'){
						var tab_id = $('ul.tabs li').eq(2).attr('data-tab');
						
						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');
						
						$('ul.tabs li').eq(2).addClass('current');
						$("#" + tab_id).addClass('current');
						
					}else if(!classType){
						classType='W';
						var tab_id = $('ul.tabs li').eq(0).attr('data-tab');
						
						$('ul.tabs li').removeClass('current');
						$('.tab-content').removeClass('current');
						
						$('ul.tabs li').eq(0).addClass('current');
						$("#" + tab_id).addClass('current');
					}
				};
		});