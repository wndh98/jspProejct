<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>Document</title>
<link rel="stylehseet" href="/css/font/montserrats.css">
<link rel="stylehseet" href="/css/font/nanum_gothic.css">
<link rel="stylehseet" href="/css/font/open_sans.css">
<link rel="stylesheet" href="/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" href="/css/order/order.css">
</head>

<body id="userStyle">

	<div class="wrap">
		<div id="container">
			<header id="header">
				<div id="orderform"></div>
				<div class="header">
					<h1 class="xans-element- xans-layout xans-layout-logotop ">
						<a href="/index.html">munigrabby</a>
					</h1>
					<div class="headerMenu gLeft">
						<span
							class="xans-element- xans-layout xans-layout-mobileaction btnBack "><a
							href="#none"
							onclick="document.referrer ? history.go(-1) : location.href='/';return false;">뒤로가기</a>
						</span>
					</div>
					<div class="headerMenu gRight">
						<span
							class="xans-element- xans-layout xans-layout-orderbasketcount btnBasket "><a
							href="/order/basket.html">장바구니<span
								class="count EC-Layout_Basket-count-display"><span
									class="EC-Layout-Basket-count">1</span></span></a> </span> <a
							href="/myshop/index.html"
							class="xans-element- xans-layout xans-layout-statelogon btnMy ">마이쇼핑
						</a>
					</div>
				</div>
				<div class="infoArea">
					<h1>주문/결제</h1>
				</div>
			</header>
			<!-- 여기까지 헤더 -->

			<form id="frm_order" action method="post" target="_self">
				<div id="conbox" class="typeHeader">
					<div class="orderBox base-fold">
						<h1 class="orderTitle">배송지</h1>
						<div class="section_menu">
							<ul>
								<li class="on"><a class="button">최근배송지</a></li>
								<li class=""><a class="button">직접입력</a></li>
							</ul>
						</div>
						<div class="deliveryInfo">
							<strong>김주오</strong>
							<p>주소입니다주소입니다주소입니다.</p>
							<p>010-1234-5678</p>
							<button class="btnBold_w deliList">배송지목록</button>
						</div>
						<div class="deliveryInfo">
							<div class="section_menu">
								<input type="radio" id="same_add" name="radio1" checked><label
									for="same_add" style="cursor: pointer;">회원 정보와 동일</label> <input
									type="radio" id="new_add" name="radio1"><label
									for="new_add" style="cursor: pointer;">새로운 배송지</label>
							</div>
							<div class="deliveryInfoTable">
								<table class="tabTable active" border="1">
									<colgroup>
										<col style="width: 102px">
										<col style="width: auto">
									</colgroup>
									<tbody>
										<tr>
											<th>받는사람 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><input type="text" value="김주오" style="width: 100%">
											</td>
										</tr>
										<tr>
											<th>주소 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><input type="text" placeholder="우편번호">
											<button class="btnNormal_w" style="display: inline-block;">주소검색</button>
												<input type="text" placeholder="기본주소" style="width: 100%">
												<input type="text" placeholder="나머지 주소(선택 입력 가능)"
												style="width: 100%"></td>
										</tr>
										<tr>
											<th>휴대 전화 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><select name="" id="" style="width: 32.19%">
													<option>010</option>
											</select> - <input type="text" style="width: 32%" value="1234">
												- <input type="text" style="width: 32%" value="5678">
											</td>
										</tr>
										<tr>
											<th>이메일 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><input type="text" style="width: 50%"> @ <select
												name="" id="" style="width: 46.6%">
													<option>-이메일 선택-</option>
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="gmail.com">gmail.com</option>
											</select></td>
										</tr>
									</tbody>
								</table>
								<table class="tabTable" border="1">
									<colgroup>
										<col style="width: 102px">
										<col style="width: auto">
									</colgroup>
									<tbody>
										<tr>
											<th>받는사람 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><input type="text" style="width: 100%"></td>
										</tr>
										<tr>
											<th>주소 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><input type="text" placeholder="우편번호">
											<button class="btnNormal_w" style="display: inline-block;">주소검색</button>
												<input type="text" placeholder="기본주소" style="width: 100%">
												<input type="text" placeholder="나머지 주소(선택 입력 가능)"
												style="width: 100%"></td>
										</tr>
										<tr>
											<th>휴대 전화 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><select name="" id="" style="width: 32.19%">
													<option>010</option>
											</select> - <input type="text" style="width: 32%"> - <input
												type="text" style="width: 32%"></td>
										</tr>
										<tr>
											<th>이메일 <img src="/images/order/bg_required.png" alt="req">
											</th>
											<td><input type="text" style="width: 50%"> @ <select
												name="" id="" style="width: 46.6%">
													<option>-이메일 선택-</option>
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="gmail.com">gmail.com</option>
											</select></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="memoBox">
							<select name="" id="">
								<option value="oMessage-0" selected="selected">-- 메시지
									선택 (선택사항) --</option>
								<option value="oMessage-1">배송 전에 미리 연락바랍니다.</option>
								<option value="oMessage-2">부재 시 경비실에 맡겨주세요.</option>
								<option value="oMessage-3">부재 시 문 앞에 놓아주세요.</option>
								<option value="oMessage-4">빠른 배송 부탁드립니다.</option>
								<option value="oMessage-5">택배함에 보관해 주세요.</option>
								<option value="oMessage-input">직접 입력</option>
							</select>
						</div>
					</div>
					<!-- 상품이미지 부분 -->
					<div id="orderProduct" class="base-fold">
						<div id="productinfo" class="title">
							<h2>주문상품</h2>
						</div>
						<div class="contents">
							<div class="imagebox">
								<img src="/images/product/b30b39630c23c4875f9f10972842e634.png"
									alt="">
							</div>
							<div class="description">
								CH Label Jogger Training Pants [Free]
								<ul>
									<li class="op">[옵션: Free/White]</li>
									<li class="ea">수량: 1개</li>
								</ul>
								<h3>21,500원</h3>
							</div>
						</div>
						<div class="totalPrice">
							<div class="title">
								<h3>배송비</h3>
								<span class="deliveryFee"><strong><span
										id="domestic_ship_fee">2,500</span>원</strong></span>
							</div>
						</div>
					</div>

					<!-- 결제 -->
					<div id="payment_area" class="base-fold">
						<div id="payment" class="title">
							<h2>결제정보</h2>
						</div>
						<div class="contents">
							<div class="segment">
								<div class="base-table">
									<table border="1">
										<caption>결제정보 상세</caption>
										<colgroup>
											<col style="width: 155px;">
											<col style="width: auto;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">주문상품</th>
												<td class="right"><span
													id="total_product_base_price_id" class="price">21,500원</span></td>
											</tr>

											<tr class="">
												<th scope="row">배송비</th>
												<td class="right"><span class="price">+<span
														id="total_ship_price_id">2,500원</span></span></td>
											</tr>

											<tr class="discountView">
												<th scope="row">할인/부가결제</th>
												<td class="right"><span class="price"><span
														class="txtRed">-<span class="eRefPrice"
															id="payment_total_sale_price_view">0</span></span>원</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="totalPay">
								<div class="title">
									<h3>최종 결제 금액</h3>
									<span class="deliveryFee"><strong><span
											id="domestic_ship_fee">24,000</span>원</strong></span>
								</div>
							</div>
						</div>
					</div>

					<!-- 지불방법 -->
					<div id="paymethod" class="base-fold">
						<div id="paymethodinfo" class="title">
							<h2>결제수단</h2>
						</div>
						<div class="contents">

							<!-- 결제수단 저장 -->
							<div class="ec-paymethod-input-detail">
								<div id="payment_input_cash" class="ec-base-table typeWrite">
									<table>
										<caption>무통장입금 정보 입력</caption>
										<colgroup>
											<col style="width: 100px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">입금은행 <span class="icoRequired">필수</span>
												</th>
												<td><input type="text" style="width: 95%;"></td>
											</tr>
											<tr>
												<th scope="row">입금자명 <span class="icoRequired">필수</span>
												</th>
												<td><input type="text" style="width: 95%;"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="saveArea segment unique ">
									<input type="checkbox" id="save_paymethod"
										name="save_paymethod" value=""><label
										for="save_paymethod">결제수단과 입력정보를 다음에도 사용</label>
								</div>
							</div>
						</div>
					</div>

					<!-- 혜택 -->
					<div id="benefitarea" class="base-fold">
						<div id="benefit_info" class="title">
							<h2>적립혜택</h2>
							<span id="ec-jigsaw-heading-benefit" class="txtStrong gRight"><span
								id="mAllMileageSum-title">780원</span> 예정</span>
						</div>

					</div>
					<div class="agreeArea base-fold">
						<div class="allAgree" style="">
							<input type="checkbox" id="allAgree"><label
								for="allAgree"><strong>모든 약관 동의</strong></label>
						</div>
						<div class="agreement">
							<!-- app tag -->
							<ul>
								<li id="ec-order-payment-directpay-card-agree" class="" style="">
									<div class="agree">
										<span class="check"><input type="checkbox"
											id="directpay_card_agree_financial"
											class="directpay_card_agree_checkbox"><label
											for="directpay_card_agree_financial"><span
												class="txtEm">[필수]</span> 결제대행서비스 약관 동의</label></span>

									</div>
								</li>
							</ul>
						</div>
						<!-- 맨 하단 버튼 -->
						<div class="ec-base-button gFull" id="orderFixItem">
							<button type="button" class="btnSubmit" id="btn_payment">
								<span id="total_order_sale_price_view"></span>24,000원 결제하기<span
									class=""></span>
							</button>
						</div>
					</div>

					<!-- 약관동의 -->
					<div class="helpArea">
						<ul class="ec-base-help typeDash">
							<li class="displaynone">
							<li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품
								금액에 대해 무이자할부가 적용되지 않습니다. 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여
								주문하여 주시기 바랍니다.</li>
							<li>최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</li>
							</li>
						</ul>
					</div>
				</div>
			</form>
		</div>
	</div>
<script src="/js/order/order.js"></script>
</body>

</html>