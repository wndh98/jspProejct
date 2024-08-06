<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<div id="container">
		<div id="contents">
			<!-- 메인 -->
			<section class="section main_text main_top_text ez-align-center"
				style="background-color: rgb(255, 255, 255); margin-bottom: 0px;">
				<div class="main_text_title main_top_text_title"
					data-ez-role="title" style="color: rgb(26, 26, 26);"></div>
				<div class="main_text_txt main_top_text_txt"
					style="color: rgb(26, 26, 26);">
					<p>
						<span>Create your own vibe </span>
					</p>
					<p>
						<span>with a unique outfit of MUNIGRABBY.</span>
					</p>
				</div>
				<!-- 링크 추후 수정 -->
				<div class="main_text_link main_top_text_link">
					<a href="#" target="_self">About</a>
				</div>
				<div class="main_text_link benefit_link">
					<a href="#" target="_self">Benefit</a>
				</div>
			</section>
			<section class="section main_product_list"
				style="margin-bottom: 117px;">
				<!-- 상품 구역 -->
				<div class="main_title ez-align-center">
					<!-- 메인 새로운 신상품 타이틀 수정하는곳 -->
					<div class="main_title_txt01">NEW! ARRIVALS</div>
					<div class="main_title_txt02">신상품</div>
				</div>
				<div class="product_listmain">

					<div class="ec-base-product">

						<!-- 상품 리스트 추후 수정 -->
						<ul class="prdList grid3" id="addItemTarget">
							<c:forEach items="${list }" var="product" end="3">
								<li id="product_111" style="width: 50%;">
									<!-- 상품번호 -->
									<div class="prdList__item">
										<div class="thumbnail">
											<!-- 상품 썸네일 -->
											<a href="#"> <!-- 썸네일 이미지 --> <img
												src="/upload/product/${product.piFile1}">
											</a>
											<div class="icon__box">
												<!-- 아이콘 박스 -->
												<span class="wish"><img
													src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_wish_before.png"
													class="wish" alt="관심상품 등록 전" productno="111" categoryno="1"
													icon_status="off" login_status="F" individual-set="F">WISH</span>
												<span class="cart"><img
													src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
													onclick="category_add_basket('111','1', '3', 'A0000', false, '1', 'P00000EI', 'A', 'F', '0');"
													alt="장바구니 담기" class="cart">CART</span>
											</div>
											<div class="dim">
												<a href="#"></a>
											</div>
											<div class="sale_box">50%</div>
										</div>
										<div class="description">
											<!-- 상품명, 가격 -->
											<div class="name">
												<a href="#"> <span
													style="font-size: 12px; color: #555555;">${product.piName}</span>
												</a>
											</div>
											<ul class="spec">
												<li><span
													style="font-size: 12px; color: #555555; text-decoration: line-through;">${product.piCprice}
												</span></li>
												<li><span
													style="font-size: 12px; color: #e00404; font-weight: bold;">${product.piSail}</span>
												</li>
											</ul>
											<div class="icon">
												<img src="/images/product/hit.gif" alt=""> <img
													src="/images/product/sale.gif" alt="">
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="more">
					<a href="#none" class="btnMore" id="btnMore"> 상품 더보기
						<div>
							(<span id="more_current_page_3" class="">1</span>/<span
								id="more_total_page_3" class="">4</span>)
						</div>
					</a>
				</div>
			</section>
			<section id="section_main_video"
				class="section main_video ez-align-center"
				style="margin-bottom: 120px;">
				<div class="main_title">
					<div class="main_title_txt01">ABOUT MUNIGRABBY</div>
					<div class="main_title_txt02"></div>
				</div>
				<div class="main_text_link main_top_text_link">
					<a href="#" target="_self">About</a>
				</div>
				<div class="main_video_box">
					<img src="https://munigrabby.com/video/video1_2.gif"
						alt="Company Video">
				</div>
			</section>
			<section class="section main_product_category"
				style="margin-bottom: 120px;">
				<div class="main_product_inner">
					<div class="main_title ez-align-center">
						<!-- 메인 베스트셀러 수정하는곳 -->
						<div class="main_title_txt01">BEST! SELLER</div>
						<div class="main_title_txt02">언제나 인기 많은 무니그래비의 콜렉션</div>
					</div>
					<ul class="main_product_tab">
						<li><button type="button" class="button active">for
								WOMEN</button></li>
						<li><button type="button" class="button">for MEN</button></li>
					</ul>
				</div>
				<div class="content_list">
					<div class="tabcontent active" id="tabContent1">
						<div class="product_listmain">
							<div class="product-W ec-base-product">
								<ul class="prdList grid5">
									<c:forEach items="${list }" var="product">
										<c:if test="${product.pcId == 10}">
											<li id="product_111" value="${product.pcId}">
												<!-- 상품번호 -->
												<div class="prdList__item">
													<div class="thumbnail">
														<!-- 상품 썸네일 -->
														<a href="#"> <!-- 썸네일 이미지 --> <img
															src="/upload/product/${product.piFile1}">

														</a>
														<div class="icon__box">
															<!-- 아이콘 박스 -->
															<span class="wish"><img
																src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_wish_before.png"
																class="wish" alt="관심상품 등록 전" productno="111"
																categoryno="1" icon_status="off" login_status="F"
																individual-set="F">WISH</span> <span class="cart"><img
																src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
																onclick="category_add_basket('111','1', '3', 'A0000', false, '1', 'P00000EI', 'A', 'F', '0');"
																alt="장바구니 담기" class="cart">CART</span>
														</div>
														<div class="dim">
															<a href="#"></a>
														</div>
														<div class="sale_box">50%</div>
													</div>
													<div class="description">
														<!-- 상품명, 가격 -->
														<div class="name">
															<a href="#"> <span
																style="font-size: 12px; color: #555555;">${product.piName}</span>
															</a>
														</div>
														<ul class="spec">
															<li><span
																style="font-size: 12px; color: #555555; text-decoration: line-through;">${product.piCprice}
															</span></li>
															<li><span
																style="font-size: 12px; color: #e00404; font-weight: bold;">${product.piSail}</span>
															</li>
														</ul>
														<div class="icon">
															<img src="/images/product/hit.gif" alt=""> <img
																src="/images/product/sale.gif" alt="">
														</div>
													</div>
												</div>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>

					<div class="tabcontent" id="tabContent4">
						<div class="product_listmain">
							<div class="product-M ec-base-product">
								<ul class="prdList grid5">
									<c:forEach var="product" items="${list}" varStatus="vs">
										<c:if test="${product.pcId == 20}">

											<li id="product_114" value="${product.pcId}">
												<!-- 상품번호 -->
												<div class="prdList__item">
													<div class="thumbnail">
														<!-- 상품 썸네일 -->
														<a href="#"> <!-- 썸네일 이미지 --> <img
															src="/upload/product/${product.piFile1}">
														</a>
														<div class="icon__box">
															<!-- 아이콘 박스 -->
															<span class="wish"><img
																src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_wish_before.png"
																class="wish" alt="관심상품 등록 전" productno="114"
																categoryno="1" icon_status="off" login_status="F"
																individual-set="F">WISH</span> <span class="cart"><img
																src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
																onclick="category_add_basket('114','1', '3', 'A0000', false, '1', 'P00000EI', 'A', 'F', '0');"
																alt="장바구니 담기" class="cart">CART</span>
														</div>
														<div class="dim">
															<a href="#"></a>
														</div>
														<div class="sale_box">50%</div>
													</div>
													<div class="description">
														<!-- 상품명, 가격 -->
														<div class="name">
															<a href="#"> <span
																style="font-size: 14px; color: #000000;">${product.piName}</span>
															</a>
														</div>
														<ul class="spec">
															<li><span
																style="font-size: 14px; color: #000000; text-decoration: line-through;">${product.piCprice}
															</span></li>
															<li><span style="font-size: 16px; color: #000000;">${product.piSail}</span>
															</li>
														</ul>
														<div class="icon">
															<img src="/images/product/hit.gif.gif" alt=""> <img
																src="/images/product/sale.gif" alt="">
														</div>
													</div>
												</div>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	<script src="/js/main.js"></script>
</body>
</html>