$(window).on("load", function() {
	const zoomFrame = $('.product_main_img');
	const zoomLens = $('.magnifier');
	const zoomWindow = $('.img_zoom');
	const IMG_LIST = $(".product_img_list li");

	zoomFrame.hover(function() {
		zoomLens.css("display", "inline-block");
		zoomWindow.css("background-image", "url(" + $("#mainImg").attr("src") + ")");
		zoomWindow.css("background-size", $("#mainImg").width() * 1.5 + "px " + $("#mainImg").height() * 1.5 + "px");
		zoomWindow.css("display", "block");
	}, function() {
		zoomLens.css("display", "none");
		zoomWindow.css("display", "none");
	});
	zoomFrame.on('mousemove', function(e) {
		let mousePosX = e.offsetX;
		let mousePosY = e.offsetY;
		zoomLens.css("left", mousePosX - zoomLens.width() / 2);
		zoomLens.css("top", mousePosY - zoomLens.height() / 2);

		zoomWindow.css("background-position", -1 * mousePosX + "px " + -1 * mousePosY + "px");
	});
	IMG_LIST.on("click", function() {
		$("#mainImg").attr("src", $(this).find("img").attr("src"));
	});
	$(".option_list button").on("click", function() {
		$(this).parent().siblings().find("button").removeClass("on");
		$(this).addClass("on");
		$(".product_select").css("display", "flex");
		$("input[name=pi_count]").val("1");
		$(".product .text span").html($(this).val());
		$("input[name=po_price]").val($(this).attr("price"));
		$(".info .price").html($("input[name=po_price]").val() * $("input[name=pi_count]").val() + "원");
	});

});

