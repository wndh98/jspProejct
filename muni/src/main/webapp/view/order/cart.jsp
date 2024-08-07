<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/order/order.css">
</head>
<body>
	<div id="container">
		<div class="large_container">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#none">홈</a></li>
					<li><a href="#none">Woman</a></li>
					<li><a href="#none">Bottom</a></li>
					<li><a href="#none">Pants</a></li>
				</ul>
			</div>
			<div class="title_section">
				<h1>회원가입</h1>
				<ul class="step">
					<li class="selected">1. 장바구니</li>
					<li>2. 주문서작성</li>
					<li>3. 주문완료</li>
				</ul>
			</div>
			<form action="/order/cartInsert.do" method="post">
				<div class="cart_container">
					<div class="section_menu">
						<ul>
							<li class="on"><a href="#section1">국내배송상품</a></li>

						</ul>
					</div>
					<h3>장바구니 상품</h3>
					<div class="cartInner">
						<div class="cartList">
							<h4>일반상품(2)</h4>
							<div class="cartContent">
								<c:forEach var="product" items="${list}" varStatus="vs">

									<input type="checkbox">
									<div class="thumbnail">
										<img
											src="/upload/product/${product.piFile1}"
											alt="">
									</div>
									<div class="info">
										<ul>
											<li>${product.piName }</li>
											<li>"${product.piPrice}"원</li>
											<li><span class="red">-0</span>원</li>
											<li class="gray">배송 : ${product.piDelivery} / 기본배송</li>

										</ul>
									</div>

									<div class="count">
										<p>수량</p>
										<div>
											<div class="count_btn">
												<button class="btnNormal_w increase">-</button>
												<input type="number" name="pi_count" class="increase_input">
												<button class="btnNormal_w increase">+</button>
												<button class="btnNormal_w margin">변경</button>
											</div>

										</div>

									</div>
								</c:forEach>


								<div class="price">
									<span>주문금액</span> <strong>26,000<i>원</i></strong>
								</div>
								<div class="btn_menu">
									<button class="btnNormal_w">관심상품</button>
									<button class="btnNormal">주문하기</button>
								</div>
								<a class="delete_btn"></a>
							</div>
						</div>
						<div class="cart_total_info">
							<div id="sticky">
								<div class="cart_sticky">
									<div class="price_info">
										<ul>
											<li><strong>총 상품금액</strong><span>186,000원</span></li>
											<li><strong>총 배송비</strong><span>0원</span></li>
											<li><strong>총 할인금액</strong><span>8,000원</span></li>
											<li><strong>기간할인</strong><span>8,000원</span></li>
										</ul>
										<div class="total_price">
											<strong>결제예정금액</strong><strong>178,000<i>원</i></strong>
										</div>
									</div>
								</div>
								<div class="btn_menu">
									<button class="btnBold">전체주문상품</button>
									<button class="btnBold_w">선택주문상품</button>
								</div>
							</div>
						</div>
					</div>
					<div class="select_btn">
						<button class="btnNormal_w">전체선택</button>
						<button class="btnNormal_w">선택삭제</button>
					</div>
				</div>

				<div class="paging">
					<c:if test="${pagination.curPage ne 1 }">
						<a class="prev_btn"
							href="/aproduct/piList.do?curPage=${pagination.prevPage}"></a>
					</c:if>
					<ul class="page_list">
						<c:forEach var="pageNum" begin="${pagination.startPage}"
							end="${pagination.endPage }">
							<c:choose>
								<c:when test="${pageNum eq pagination.curPage}">
									<li><a class="on"
										href="/product/piList.do?curPage=${pageNum}">${pageNum }</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/product/piList.do?curPage=${pageNum}">${pageNum}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>
					<c:if
						test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
						<a class="next_btn"
							href="/product/piList.do?curPage=${pagination.nextPage }"></a>
					</c:if>
				</div>
			</form>
		</div>
	</div>

	<script>
		$(function() {
			$(window).on(
					"scroll",
					function(e) {
						if ($(window).scrollTop() > 650) {
							$("#sticky")
									.css(
											"top",
											$(window).scrollTop()
													- $(".cart_total_info")
															.position().top
													+ 30 + "px")
						}
					})

		});
	</script>
</body>

</html>