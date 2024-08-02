<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/product/product.css">
</head>
<body>
	<div id="container">
		<div id="contents">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#none">홈</a></li>
					<li><a href="#none">Woman</a></li>
				</ul>
			</div>
			<div class="section normalpackage_box">
				<div class="scrollx">
					<div class="normalmenu">
						<div class="function">
							<p class="prdCount">
								총<strong class="txtEm">10</strong>개의 상품이 있습니다.
							</p>
							<div class="sort">
								<select id="selArray" name="selArray"
									class="xans-product-orderby">
									<option>- 정렬방식 -</option>
									<option>신상품</option>
									<option>상품명</option>
									<option>낮은가격</option>
									<option>높은가격</option>
									<option>사용후기</option>
								</select>
							</div>
						</div>
					</div>
					<div class="product_list">
						<c:forEach items="${list}" var="product">
							<!-- 상품번호 -->
							<div class="ec-base-product">
								<ul class="prdList grid4">
									<li>
										<div class="prdList__item">
											<div class="thumbnail">
												<!-- 상품 썸네일 -->
												<a href="/product/productView.do?=${product.piNum}"> <!-- 썸네일 이미지 -->
													<img src="/upload/product/${product.piFile1}">
												</a>
												<div class="icon__box">
													<!-- 아이콘 박스 -->
													<span class="wish"><img
														src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_wish_before.png"
														class="wish">WISH</span> <span class="cart"><img
														src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif"
														class="cart">CART</span>
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
														style="font-size: 12px; color: #555555; text-decoration: line-through;">${product.piPrice}
													</span></li>
													<li><span
														style="font-size: 12px; color: #e00404; font-weight: bold;">${product.piCprice}</span></li>
												</ul>
												<div class="icon">
													<img src="images/hit.gif" alt=""> <img
														src="images/sale.gif" alt="">
												</div>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<%-- 	<tr>
								<td>${product.piName}</td>
								<td>${product.piPrice}</td>
								<td>${product.piCprice}</td>
								<td>${product.piCount}</td>
							</tr> --%>
						</c:forEach>
					</div>
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
		</div>
	</div>
</body>
</html>