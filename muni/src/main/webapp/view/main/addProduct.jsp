<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${list }" var="product">
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
						class="wish">WISH</span> <span class="cart"><img
						src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" alt="장바구니 담기" class="cart">CART</span>
				</div>
				<div class="dim">
					<a href="#"></a>
				</div>
				<div class="sale_box">50%</div>
			</div>
			<div class="description">
				<!-- 상품명, 가격 -->
				<div class="name">
					<a href="#"> <span style="font-size: 12px; color: #555555;">${product.piName}</span>
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
