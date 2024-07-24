
$(function() {
	let radio1 = $("input[name=radio1]");
	let radio2 = $("input[name=radio2]");
	radio1.on("change", function() {
		if ($(this).val() == 1) {
			$(".type1").css("display", "table-row");
			$(".type3").css("display", "none");
			$(".type2").css("display", "none");
			$(radio2[0]).prop("checked", true);
		} else {
			$(".type1").css("display", "table-row");
			$(".type3").css("display", "none");
			$(".type2").css("display", "table-row");
		}
	});
	radio2.on("change", function() {
		if ($(this).val() == 2) {
			$(".type1").css("display", "table-row");
			$(".type3").css("display", "none");
			$(".type2").css("display", "table-row");
		} else {
			$(".type1").css("display", "none");
			$(".type2").css("display", "none");
			$(".type3").css("display", "table-row");
		}
	});
})
