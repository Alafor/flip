/**
 * 
 */
//페이지 표시 기능
$(document).ready(function() {
			
			var search = $("#search").attr("data-param");
			var category = $("#category").attr("data-param");
			var classType = $("#classType").attr("data-param");
			var addArea = $("#addArea").attr("data-param");
			
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
					//alert("지역: "+addArea+", 카테고리: "+category+", classType: "+classType+" search: "+search);
					if(!search && !category && !addArea){
						//클래스 타입 선택해서 들어왔을 경우
						$("div.current").load("listload.do?classType="+classType);
					}else if(!(!addArea) && !search && !category){
						//지역 선택 했을 경우
						$("div.current").load("listload.do?classType="+classType+"&selArea="+addArea);
					}else if(!(!category) && !search && !addArea){
						$("div.current").load("listload.do?classType="+classType+"&department="+category);
					}else if(!(!category) && !(!addArea) && !search){
						$("div.current").load("listload.do?classType="+classType+"&department="+category+"&selArea="+addArea);
					}else if(!(!search) && !category && !addArea){
						$("div.current").load("listload.do?classType="+classType+"&search="+search);
					}else if(!(!search) && !(!addArea) && !category){
						$("div.current").load("listload.do?classType="+classType+"&search="+search+"&selArea="+addArea);
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