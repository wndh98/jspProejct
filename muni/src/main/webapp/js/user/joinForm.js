$(function(){
    let radio1 = $("input[name=userType]");
    let radio2 = $("input[name=userType2]");
	$(".type1").css("display","table-row");
	$(".type3").css("display","none");
	$(".type2").css("display","none");
	$("#name1").prop("disabled","");
	$("input[name=userComName]").prop("disabled","disabled");
	$("input[name=userComNum]").prop("disabled","disabled");
	$("#name2").prop("disabled","disabled");
	$("#userCoNum1").prop("disabled","disabled");
	$("#userCoNum2").prop("disabled","disabled");
	$("#userCoNum3").prop("disabled","disabled");
    radio1.on("change",function(){
        if($(this).val()==1){
            $(".type1").css("display","table-row");
            $(".type3").css("display","none");
            $(".type2").css("display","none");
			$("#name1").prop("disabled","");
			$("input[name=userComName]").prop("disabled","disabled");
			$("input[name=userComNum]").prop("disabled","disabled");
			$("#name2").prop("disabled","disabled");
			$("#userCoNum1").prop("disabled","disabled");
			$("#userCoNum2").prop("disabled","disabled");
			$("#userCoNum3").prop("disabled","disabled");
        }else{
            $(".type1").css("display","table-row");
            $(".type3").css("display","none");
            $(".type2").css("display","table-row");
			$("#name1").prop("disabled","");
			$("input[name=userComName]").prop("disabled","");
			$("input[name=userComNum]").prop("disabled","");
			$("#name2").prop("disabled","disabled");
			$("#userCoNum1").prop("disabled","disabled");
			$("#userCoNum2").prop("disabled","disabled");
			$("#userCoNum3").prop("disabled","disabled");
        }
    });
    radio2.on("change",function(){
        if($(this).val()==2){
            $(".type1").css("display","table-row");
            $(".type3").css("display","none");
            $(".type2").css("display","table-row");
			$("#name1").prop("disabled","");
			$("input[name=userComName]").prop("disabled","");
			$("input[name=userComNum]").prop("disabled","");
			$("#name2").prop("disabled","disabled");
			$("#userCoNum1").prop("disabled","disabled");
			$("#userCoNum2").prop("disabled","disabled");
			$("#userCoNum3").prop("disabled","disabled");
			
        }else{
            $(".type1").css("display","none");
            $(".type2").css("display","none");
            $(".type3").css("display","table-row");
			$("#name1").prop("disabled","disabled");
			$("input[name=userComName]").prop("disabled","disabled");
			$("input[name=userComNum]").prop("disabled","");
			$("#name2").prop("disabled","");
			$("#userCoNum1").prop("disabled","");
			$("#userCoNum2").prop("disabled","");
			$("#userCoNum3").prop("disabled","");
        }
    });
})


function chkFrm(){
	if(frm.userPassword.value!=frm.passwordChk.value){
		alert("비밀번호 확인과 비밀번호가 다릅니다. 다시 확인해주세요.");
		focus.passwordChk.focus
		return false;
	}
	
}