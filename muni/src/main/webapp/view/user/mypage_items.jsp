<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/user/mypage_items.css">
</head>
<body>
	<div id="container">
		<div class="contents">
			<!-- 본체 부분 -->
			<div class="breadcrumbs">
				<ul>
					<li><a href="#none">홈</a></li>
					<li><a href="#none">마이쇼핑</a></li>
					<li><a href="#none">나의 위시리스트</a></li>
				</ul>
			</div>
			<!-- 홈/마이쇼핑 -->
			<!--
                <div class="section_titleArea">
                    <span></span>
                    <ol>
                        <li>
                            <a href="/">홈</a>
                        </li>
                        <li>
                            <a href="https://munigrabby.com/myshop/index.html">마이쇼핑</a>
                        </li>
                        <li><strong>나의 위시리스트</strong></li>
                    </ol>

                </div>
                -->
			<div class="section benefit"></div>
			<div class="myshopArea">
				<div class="titleArea_mywish">
					<h2>나의 위시리스트</h2>
				</div>
				<div class="myshop_wishlist">
					<div class="conbox">
						<div class="conbox2">
							<!-- 여기까지 위시리스트 -->
							<!-- 추가 -->
							<div class="prdBox">
								<span class="check"> <input type="checkbox">
								</span>
								<div class="imagebox">
									<img src="/images/product/b30b39630c23c4875f9f10972842e634.png"
										alt="">
								</div>
								<div class="description">
									Ribbon underpants mini skirt (black)
									<ul>
										<li>26,000원</li>
										<li>26000</li>
									</ul>
								</div>
								<div class="buttonArea">
									<span class="Right">
										<button type="button"
											onclick="NewWishlist.actionOrder('basket', 0)"
											class="btnNormal sizeS ">장바구니</button>
										<button type="button"
											onclick="NewWishlist.actionOrder('order', 0)"
											class="btnSubmit sizeS ">주문하기</button>
									</span>
								</div>
								<a href="#none" class="btnDelete btn_wishlist_del"
									rel="112||000A||">삭제</a>
							</div>

						</div>
					</div>
					<p class="empty" style="display: none;"></p>
				</div>

				<!-- 하단 버튼 -->
				<div class="delete_order">
					<div class="base_button">
						<span class="Right"> <a href="#none"
							class="btnNormal sizeS" onclick="NewWishlist.deleteAll();">전체삭제</a>
							<a href="#none" class="btnNormal sizeS"
							onclick="NewWishlist.deleteSelect();">선택삭제</a>
						</span>
					</div>
					<div class="base_button bottom">
						<a href="#none" class="btnSubmitFix sizeM"
							onclick="NewWishlist.orderAll();">전체상품주문</a>
					</div>
				</div>

				<!--
                    <div class="listbox">
                        <a href="#none" class="first">첫 페이지</a>
                        <a href="#none">이전 페이지</a>
                        <ol>
                            <li class="xans-record-"><a href="?page=1" class="this">1</a></li>
                        </ol>
                        <a href="#none">다음 페이지</a>
                        <a href="#none" class="last">마지막 페이지</a>
                    </div>
-->

				<div class="paging">
					<a class="prev_btn"></a>
					<ul class="page_list">
						<li><a class="on" href="#none">1</a></li>
						<li><a href="#none">2</a></li>
						<li><a href="#none">3</a></li>
						<li><a href="#none">4</a></li>
					</ul>
					<a class="next_btn"></a>
				</div>
				<div class="myshopMain">
					<div class="subTitle">
						<h3>나의 쇼핑 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/myshop/order/list.html">주문내역 조회</a></li>
						<li><a href="/myshop/mileage/historyList.html">적립금 내역</a></li>
						<!-- <li class="displaynone">
                                <a href="/myshop/deposits/historyList.html">예치금 내역</a>
                            </li> -->
						<li class=""><a href="/myshop/coupon/coupon.html">쿠폰 내역</a></li>
						<li><a href="/myshop/addr/list.html">배송 주소록 관리</a></li>
						<!-- <li class="">
            <a href="/myshop/regular_delivery.html">정기배송 관리</a>
        </li> -->
					</ul>
					<div class="subTitle">
						<h3>활동 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/product/recent_view_product.html">최근 본 상품</a></li>
						<li><a href="/myshop/wish_list.html">나의 위시리스트</a></li>
						<li class="displaynone"><a href="">좋아요</a></li>
						<li class=""><a href="/myshop/board_list.html">나의 게시글</a></li>
					</ul>
					<div class="subTitle">
						<h3>나의 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/member/modify.html">회원 정보 수정</a></li>
						<li class="statelogon"><a href="/exec/front/Member/logout/">로그아웃</a>
						</li>
					</ul>

					<div class="consult">
						<a href="" class="btn">1:1 문의하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="dark" class="close"></div>
	</div>
	<!-- 오른쪽 바 -->
	<div id="popupbox" class="close">
		<div class="popup">

			<div class="header1">
				<h2>옵션 선택</h2>
			</div>
			<div class="content1">
				<div class="productdetali">
					<div class="imagearea">
						<div class="productimage">
							<img
								src="//munigrabby.com/web/product/tiny/202404/89ac3f2d51835defe7ebf974a909c40a.png"
								alt="CH Label Jogger Training Pants [Free]"
								onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
								id="" class="">
						</div>
						<p class="name" title="상품명">
							<strong>CH Label Jogger Training Pants [Free]</strong>
						</p>
						<div class="stick"></div>
					</div>
					<table border="1"
						class="xans-element- xans-product xans-product-option xans-record-">
						<!--
                            $use_per_add_option = yes
                        -->
						<caption>상품 옵션</caption>
						<colgroup>
							<col style="width: 86px;">
							<col style="width: auto;">
						</colgroup>

						<tbody
							class="xans-element- xans-product xans-product-option xans-record-">
							<tr>
								<th scope="row">사이즈</th>
								<td>
									<ul option_product_no="51"
										option_select_element="ec-option-select-finder"
										option_sort_no="1" option_type="T" item_listing_type="S"
										option_title="사이즈" product_type="product_option"
										product_option_area="product_option_51_0"
										option_style="button" ec-dev-id="product_option_id1"
										ec-dev-name="option1" ec-dev-class="ProductOption0"
										class="ec-product-button" required="true">
										<li class="ec-product-selected" option_value="Free"
											link_image="" title="Free"><a href="#none"><span>Free</span></a>
										</li>
									</ul>
									<p class="value">
										[필수] <span
											class="ec-shop-front-product-option-desc-trigger ec-product-value"
											data-option_msg="옵션을 선택해 주세요">Free</span>
									</p>

								</td>
							</tr>
						</tbody>

						<tbody
							class="xans-element- xans-product xans-product-option xans-record-">
							<tr>
								<th scope="row">색상</th>
								<td>
									<ul option_product_no="51"
										option_select_element="ec-option-select-finder"
										option_sort_no="2" option_type="T" item_listing_type="S"
										option_title="색상" product_type="product_option"
										product_option_area="product_option_51_0"
										option_style="button" ec-dev-id="product_option_id2"
										ec-dev-name="option2" ec-dev-class="ProductOption0"
										class="ec-product-button" required="true">
										<li class="ec-product-selected" option_value="Green"
											link_image="//munigrabby.com/web/product/big/202404/b30b39630c23c4875f9f10972842e634.png"
											title="Green"><a href="#none"><span>Green</span></a></li>
										<li class="" option_value="White"
											link_image="//munigrabby.com/web/product/extra/big/202404/5b7b9aec2d95abddae34f8c47eb02489.png"
											title="White"><a href="#none"><span>White</span></a></li>
										<li class="" option_value="Pink"
											link_image="//munigrabby.com/web/product/extra/big/202404/3f50ac583e8731f0876ba0991696c29f.png"
											title="Pink"><a href="#none"><span>Pink</span></a></li>
									</ul>
									<p class="value">
										[필수] <span
											class="ec-shop-front-product-option-desc-trigger ec-product-value"
											data-option_msg="옵션을 선택해 주세요">Green</span>
									</p>

								</td>
							</tr>
						</tbody>
					</table>
					<div class="totalProducts">
						<table border="0">
							<caption>상품 목록</caption>
							<colgroup>
								<col style="width: auto;">
								<col style="width: 130px;">
								<col style="width: 85px;">
							</colgroup>

							<tbody class="displaynone">
								<tr>
									<td>CH Label Jogger Training Pants [Free]</td>
									<td>
										<div class="count_btn">
											<button class="btnNormal_w increase"
												style="width: 30px; height: 30px; padding: 0;">-</button>
											<input type="number" name="pi_count" class="increase_input"
												style="width: 45px; height: 30px;">
											<button class="btnNormal_w increase"
												style="width: 30px; height: 30px; padding: 0;">+</button>
											<button class="delete" style="width: 20px;">
												<img src="/images/product/ico_product_delete.svg">
											</button>
										</div>
									</td>
									<td class="right"><span class="quantity_price">21500원</span>
										<span class="mileage ">(<img
											src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif"
											alt=""> &nbsp;<span class="mileage_price">650원</span>)
									</span></td>
								</tr>

							</tbody>
						</table>
					</div>
					<div id="totalPrice">
						<strong class="title">TOTAL <span class="qty">(QUANTITY)</span>
						</strong> <span class="total"> <strong> <em>21,500</em>
						</strong> (1개)
						</span>
					</div>

				</div>
			</div>
			<div
				class="xans-element- xans-product xans-product-action ec-base-button gColumn">
				<a href="#none" class="btnNormal sizeM "
					onclick="product_submit(2, '/exec/front/order/basket/', this)">장바구니
					담기</a> <a href="#none" class="btnSubmit sizeM "
					onclick="product_submit(1, '/exec/front/order/basket/', this)">
					<span id="btnBuy">바로구매</span>
				</a>
			</div>
			<a class="btnClose close" id="sideClose" onclick=""></a>
		</div>
	</div>
	<script src="/js/mypage/mypage_items.js"></script>
</body>
</html>