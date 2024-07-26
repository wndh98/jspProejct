
/****************Agree************* */
$(window).on("load", function() {
	$("#check1").on("click", function() {
		console.log($("#check1").prop("checked"));
		if ($("#check1").prop("checked") == false) {
			$("input[type=checkbox]").prop("checked", "");
		} else {
			$("input[type=checkbox]").prop("checked", "checked");
		}
	});
	$("input[type=checkbox]").not("#check1").on("click", function() {
		$("#check1").prop("checked", "checked");
		$("input[type=checkbox]").not("#check1").each(function() {
			if ($(this).prop("checked") == false) {
				$("#check1").prop("checked", "");
			}
		});
		if ($(this).prop("checked") == false) {
			$("#check1").prop("checked", "");
		}


	});
});
function checkAgree(){
	let agree=true;
	$("input[name=rAgree]").each(function(){
		if($(this).prop("checked")==false){
			console.log($(this).prop("checked"));
			alert("이용약관에 동의해주세요.");
			agree=false;
			return false;	
		}
	});
	return agree;
}
/****************Agree************* */