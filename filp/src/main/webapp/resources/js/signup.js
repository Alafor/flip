/**
 * 회원가입시 validate 설정 스크립트 by kimilnam
 */

(function ($) {
    "use strict";
    var input = $('.validate-input .form-control');
    $('.validate-form').on('submit',function(){
        var check = true;
        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }
        return check;
    });
    $('.validate-form .form-control').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });
    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'member_email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }
 
    function showValidate(input) {
        var thisAlert = $(input).parent();
        $(thisAlert).addClass('alert-validate');
    }
    function hideValidate(input) {
        var thisAlert = $(input).parent();
        $(thisAlert).removeClass('alert-validate');
    } 
 })(jQuery);   

//아이디 정규식
(function ($) {
    "use strict";    
var input = $('.validate-input .form-control');
$('.validate-form').on('submit',function(){
    var check = true;
    for(var i=0; i<input.length; i++) {
        if(validate(input[i]) == false){
            showValidate(input[i]);
            check=false;
        }
    }
    return check;
});
$('.validate-form .form-control').each(function(){
    $(this).focus(function(){
       hideValidate(this);
    });
});
 function validate (input) {
	if($(input).attr('name') == 'member_id') {
		if($(input).val().trim().match(/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}$/) == null) {
			return false;
		}
	}
	else {
		if($(input).val().trim() == ''){
			return false;
		}
	}
}
function showValidate(input) {
    var thisAlert = $(input).parent();
    $(thisAlert).addClass('alert-validate');
}
function hideValidate(input) {
    var thisAlert = $(input).parent();
    $(thisAlert).removeClass('alert-validate');
	}
})(jQuery);

//비밀번호 정규식
(function ($) {
    "use strict";    
var input = $('.validate-input .form-control');
$('.validate-form').on('submit',function(){
    var check = true;
    for(var i=0; i<input.length; i++) {
        if(validate(input[i]) == false){
            showValidate(input[i]);
            check=false;
        }
    }
    return check;
});
$('.validate-form .form-control').each(function(){
    $(this).focus(function(){
       hideValidate(this);
    });
});
function validate (input) {
	if($(input).attr('type') == 'password'||$(input).attr('name') == 'member_password') {
		if($(input).val().trim().match(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/) == null) {
			return false;
		}
	}
	else {
		if($(input).val().trim() == ''){
			return false;
		}
	}
}
function showValidate(input) {
    var thisAlert = $(input).parent();
    $(thisAlert).addClass('alert-validate');
}
function hideValidate(input) {
    var thisAlert = $(input).parent();
    $(thisAlert).removeClass('alert-validate');
	}
})(jQuery);


//전화번호 정규식
(function ($) {
	"use strict";    
	var input = $('.validate-input .form-control');
	$('.validate-form').on('submit',function(){
		var check = true;
		for(var i=0; i<input.length; i++) {
			if(validate(input[i]) == false){
				showValidate(input[i]);
				check=false;
			}
		}
		return check;
	});
	$('.validate-form .form-control').each(function(){
		$(this).focus(function(){
			hideValidate(this);
		});
	});
	  function validate (input) {
	    	if($(input).attr('name') == 'member_phone') {
	    		if($(input).val().trim().match(/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/) == null) {
	    			return false;
	    		}
	    	}
	    	else {
	    		if($(input).val().trim() == ''){
	    			return false;
	    		}
	    	}
	    }
	function showValidate(input) {
		var thisAlert = $(input).parent();
		$(thisAlert).addClass('alert-validate');
	}
	function hideValidate(input) {
		var thisAlert = $(input).parent();
		$(thisAlert).removeClass('alert-validate');
	}
})(jQuery);

//이름 정규식
(function ($) {
    "use strict";    
var input = $('.validate-input .form-control');
$('.validate-form').on('submit',function(){
    var check = true;
    for(var i=0; i<input.length; i++) {
        if(validate(input[i]) == false){
            showValidate(input[i]);
            check=false;
        }
    }
    return check;
});
$('.validate-form .form-control').each(function(){
    $(this).focus(function(){
       hideValidate(this);
    });
});
function validate (input) {
	if($(input).attr('name') == 'member_name') {
		if($(input).val().trim().match(/^[가-힣]{2,4}$/) == null) {
			return false;
		}
	}
	else {
		if($(input).val().trim() == ''){
			return false;
		}
	}
}
function showValidate(input) {
    var thisAlert = $(input).parent();
    $(thisAlert).addClass('alert-validate');
}
function hideValidate(input) {
    var thisAlert = $(input).parent();
    $(thisAlert).removeClass('alert-validate');
	}
})(jQuery);

