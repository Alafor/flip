/**
 * 
 */
$(function() {
	//input의 id를 autocomplete한다.
	$( "#autos").autocomplete({
		source : function(request, response){
			$.ajax({
				type:"post",
				dataType:"json",                  //data를 json으로 return 받음.
				url:"autoComplete.do",          //json으로 데이터를 반환해야한다.
				data:{"userName":$("#autocompleteUserName").val()},
				success:function(data){
					response($.map(data, function(item){     //function의 item에 data가 바인딩된다.
						return{
							//기본적으로 label과 value를 사용하지만 custom 변수를 선언해서 사용 가능하다. ui.item.변수명으로 사용가능함.
							//data는 반환한 배열, data[i].USER_INFO 및 아래 선언된 KEY값이 들어가있다.
							label:item.autoList,
							value:item.autoList
						}
					}));
				},
				error: function(jqxhr, status, error){
					alert(jqxhr.statusText + ",  " + status + ",   " + error);
					alert(jqxhr.status);
					alert(jqxhr.responseText);
				}
			})
		},
		minLength:1,               //1글자 이상 입력해야 autocomplete이 작동한다.
		focus:function(event, ui){return false;} //한글입력시 포커스이동하면 서제스트가 삭제되므로 focus처리
	});
});
