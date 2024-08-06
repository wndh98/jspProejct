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
	$("#piCount").on("change", function() {
		if ($(this).val() <= 0) $(this).val("1");
		else if ($(this).val() > $("input[name='maxCount']").val() * 1) $(this).val($("input[name='maxCount']").val());
		let piPrice = $("input[name='eprice']").val();
		let piDelivery = $("input[name='piDelivery']").val();
		let totalPrice = $(this).val() * piPrice;
		$("#sPrice").html(totalPrice.toLocaleString('ko-KR') + "원");
		totalPrice += piDelivery * 1;
		$("#price").html(totalPrice.toLocaleString('ko-KR') + "원");
		$("#count").html("(" + $(this).val() + "개)");
	})
	$(".increase").on("click", function() {
		let piCount = $("input[name='piCount']").val() * 1;
		if ($(this).val() == "+") {
			$("input[name='piCount']").val(piCount + 1);
			$("#piCount").change();
		} else {
			$("input[name='piCount']").val(piCount - 1);
			$("#piCount").change();
		}
	});
	$(".cart").on("click", function() {

		let ocId = window.localStorage.getItem("ocId");
		$.ajax({
			type: 'post',           // 타입 (get, post, put 등등)    
			url: '/product/CartPickup.do',           // 요청할 서버url    
			dataType: 'text',       // 데이터 타입 (html, xml, json, text 등등)    
			data: {  // 보낼 데이터 (Object , String, Array)      
				"piCount": 1,
				"piNum": $(this).attr("piNum"),
				"ocId": ocId
			},
			success: function(result) { // 결과 성공 콜백함수        
				if(result.trim()=="fail"){
					alert("같은상품이 존재합니다.");					
				}else{
					window.localStorage.setItem("ocId", result.trim());
					alert("장바구니에 상품을 추가했습니다.");
				}

			}
		})

	});
});






