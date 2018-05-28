$(document).ready(function() {
	$.material.init();
   
    if($("#password").val() != ""){
		$("input#password").removeClass("is-empty");
	}
	
	if($("#password-new").val() != ""){
		$("input#password-new").removeClass("is-empty");
	}
	
	if($("#password-confirm").val() != ""){
		$("input#password-confirm").removeClass("is-empty");
	}
	
	if($("#username").val() != ""){
		$("input#username").removeClass("is-empty");
	}
   
	$("input#username").focus();
	
	$("input#password-new").focus();
});

