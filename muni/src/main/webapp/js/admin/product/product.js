
$(function() {
	var editor = new FroalaEditor('#froala', {
		heightMin: 440,
		heightMax: 800
	})
	$("#color").on("change", function() {
		if ($(this).prop("checked") == true) {
			$(".optionStyle").css("display", "block");
			$(".sizeChk").css("display", "inline-block");
		} else {
			$(".optionStyle").css("display", "none");
			$(".sizeChk").css("display", "none");
		}
	});
	$("#size").on("change", function() {
		if ($(this).prop("checked") == true) {
			$(".color").css("display", "none");
			$(".size").css("display", "table-row");

		} else {
			$(".color").css("display", "table-row");
			$(".size").css("display", "none");

		}
	});

	$(".colorAdd").on("click", function() {

		$(".optionStyle").append($(".colorTable").clone(true)[0]);
		$(".colorDel").on("click", function() {
			$(this).parent().parent().parent().remove();
		});
	});
	$(".sizeAdd").on(
		"click",
		function() {
			console.log($(this).parent().parent().find(".sizeTd")
				.append($(".sizeTable").clone(true)[0]));
			$(".sizeDel").on("click", function() {
				$(this).parent().parent().parent().remove();
			});
		});

});
