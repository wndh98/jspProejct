<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="breadcrumbs">

			<ul>
				<li><a href="#none">홈</a></li>
				<li><a href="#none">Woman</a></li>
				<li><a href="#none">Bottom</a></li>
				<li><a href="#none">Pants</a></li>
			</ul>
		</div>
		<div class="product_item">
			<div class="product_img">
				<div class="product_main_img">
					<div class="wish">
						<img src="/images/product/btn_wish_before.png">
					</div>
					<img id="mainImg" src="/images/product/product1.png" alt="thumb">
					<span class="magnifier"></span>
				</div>
				<div class="product_sub_img">
					<ul class="product_img_list">
						<li><img src="/images/product/product1.png"></li>
						<li><img
							src="https://munigrabby.com/web/product/extra/small/202406/a82c4b729143db95e3247137745a6bd2.png"></li>
						<li><img src="/images/product/product1.png"></li>
					</ul>
				</div>
				<div class="zoomwrap">
					<div class="img_zoom" style="display: none"></div>
				</div>
			</div>

			<div class="product_explain">
				<form method="post" action="/order/orderForm.do?=${product.piNum}">
					<input type="hidden" name="piNum" value="${product.piNum}">
					<input type="hidden" name="piPrice" value="${product.piPrice}">
					<h1>상품명</h1>
					<div class="basic_info">

						<ul>
							<li><span>소비자가</span>${product.piCprice }</li>
							<li><span>할인판매가</span>${product.piSail }</li>
							<li><span>한번더할인</span>${product.piSailPrice }</li>
							<li><span>배송비</span>${product.piDelivery }</li>
							<li><span>재고수량</span>${product.piCount }</li>
						</ul>
					</div>


					<div class="product_select">

						<div class="product">
							<div class="text">
								<p>상품명</p>
							</div>
							<div class="count_btn">
								<button type="button" class="btnNormal_w increase">-</button>
								<input type="number" name="piCount" class="increase_input">
								<button type="button" class="btnNormal_w increase">+</button>
							</div>
						</div>
						<div class="info">
							<p class="price">0원</p>

						</div>
					</div>

					<div class="product_price">
						<div class="price_text">
							<span>TOTAL</span>(QUANTITY)
						</div>
						<div class="price_info">
							<span id="price">0원</span><span id="count">(0개)</span>
						</div>
					</div>
					<div class="product_button">
						<button class="btn_black" type="button"
							onclick="location.href='/order/orderForm.do'">BUY IT NOW</button>
						<button class="btn_white" type="button"
							onclick="location.href='/order/orderCart.do'">CART</button>
						<button class="btn_white" type="button"
							onclick="location.href='/order/wishList.do'">WISH LIST</button>
					</div>
				</form>

			</div>
		</div>
		<section id="section1">
			<div class="section_menu">
				<ul>
					<li class="on"><a href="#section1">상세정보</a></li>
					<li><a href="#section2">상품후기 <span>0</span></a></li>
					<li><a href="#section3">상품문의 <span>0</span></a></li>
					<li><a href="#section4">배송/교환/환불 안내</a></li>
				</ul>
			</div>
			<div class="section_content">내용</div>
		</section>
		<section id="section2">
			<div class="section_menu">
				<ul>
					<li><a href="#section1">상세정보</a></li>
					<li class="on"><a href="#section2">상품후기 <span>0</span></a></li>
					<li><a href="#section3">상품문의 <span>0</span></a></li>
					<li><a href="#section4">배송/교환/환불 안내</a></li>
				</ul>
			</div>
			<div class="section_content">
				<div class="board_review"></div>
			</div>
		</section>
		<section id="section3">
			<div class="section_menu">
				<ul>
					<li><a href="#section1">상세정보</a></li>
					<li><a href="#section2">상품후기 <span>0</span></a></li>
					<li class="on"><a href="#section3">상품문의 <span>0</span></a></li>
					<li><a href="#section4">배송/교환/환불 안내</a></li>
				</ul>
			</div>
			<div class="section_content">
				<div class="board_qa"></div>
			</div>
		</section>
		<section id="section4">
			<div class="section_menu">
				<ul>
					<li><a href="#section1">상세정보</a></li>
					<li><a href="#section2">상품후기 <span>0</span></a></li>
					<li><a href="#section3">상품문의 <span>0</span></a></li>
					<li class="on"><a href="#section4">배송/교환/환불 안내</a></li>
				</ul>
			</div>
			<div class="section_content">
				<div class="service_info">
					<div class="service_block">
						<div class="title">PAYMENT INFO</div>
						<div class="detail">
							<p>고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나
								타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.</p>
							<p>
								<br>
							</p>
							<p>무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면
								됩니다.</p>
							<p>주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며
								입금되지 않은 주문은 자동취소 됩니다.</p>
						</div>
					</div>
				</div>
				<div class="service_info">
					<div class="service_block">
						<div class="title">DELIVERY INFO</div>
						<div class="detail">
							<p>배송 방법 : 택배</p>
							<p>배송 지역 : 전국지역</p>
							<p>배송 비용 : 2,500원</p>
							<p>배송 기간 : 5일 ~ 10일</p>
							<p>배송 안내 :</p>
							<p>· 기본 배송비 : 2,500원 (도서, 산간, 오지 일부 지역은 배송불가 및 추가 배송비 : 제주지역
								3,500원/ 도서산간지역 5,000원이 부과됩니다.)</p>
							<p>
								<br>
							</p>
							<p>· 상품 50,000원 이상 구매시 무료배송 (할인 등이 적용된 최종 결제 금액 기준)</p>
							<p>
								<br>
							</p>
							<p>· 제주지역 및 도서산간지역은 추가 배송비만 부과</p>
							<p>
								<br>
							</p>
							<p>· 배송방식: 택배(CJ 대한통운, 롯데택배) ﻿</p>
							<p>
								<br>
							</p>
							<p>· 배송지역: 전국(일부지역 제외)</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>· 주문한 상품은 결제완료 후 토,일, 공휴일 제외하고 1~4일 이내 출고 됩니다. (무통장, 계좌이체
								등 현금 주문일 경우 입금 완료일이 결제 완료일 입니다. )</p>
							<p>
								<br>
							</p>
							<p>· 상품 배송 소요기간은 지역/택배사 상황에 따라 변경될 수 있으며, 이벤트/프로모션 등 스팟성 행사로
								인한 주문량 증가, 예약발송 시 배송이 지연될 수 있습니다.</p>
							<p>
								<br>
							</p>
							<p>· 제주도 및 도서산간 지역의 경우 배송이 제한될 수 있습니다.</p>
							<p>
								<br>
							</p>
							<p>· 고객님의 주소 기입 오류, 임의 수취거부, 고객 부재로 인해 반송될 경우 배송비가 청구될 수
								있습니다.</p>
							<p>
								<br>
							</p>
							<p>· 주문 수량이 많거나 BOX제품을 동시에 구매하는 경우, 안전배송을 위해 다수의 박스로 배송될 수
								있으며, 택배사 사정에 따라 박스별 배송 일정이 다를 수 있습니다.</p>
						</div>
					</div>
				</div>
				<div class="service_info">
					<div class="service_block">
						<div class="title">EXCHANGE INFO</div>
						<div class="detail">
							<p>교환 및 반품 주소</p>
							<p>
								<br>
							</p>
							<p>- 서울시 서초구 서초대로398 6F 609호 (서초동, BNK디지털타워빌딩)</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>교환 및 반품이 가능한 경우</p>
							<p>
								<br>
							</p>
							<p>- 계약내용에 관한 서면을 받은 날부터 7일. 단, 그 서면을 받은 때보다 재화등의 공급이 늦게 이루어진
								경우에는 재화등을 공급받거나 재화등의 공급이 시작된 날부터 7일 이내</p>
							<p>
								<br>
							</p>
							<p>- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해
								재화 등을 공급받은 날 부터 3월이내, 그사실을 알게 된 날 또는 알 수 있었던 날부터 30일이내</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>교환 및 반품이 불가능한 경우</p>
							<p>
								<br>
							</p>
							<p>- 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기
								위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)</p>
							<p>
								<br>
							</p>
							<p>- 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우</p>
							<p>
								<br>
							</p>
							<p>- 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우</p>
							<p>
								<br>
							</p>
							<p>- 복제가 가능한 재화등의 포장을 훼손한 경우</p>
							<p>
								<br>
							</p>
							<p>- 개별 주문 생산되는 재화 등 청약철회시 판매자에게 회복할 수 없는 피해가 예상되어 소비자의 사전
								동의를 얻은 경우</p>
							<p>
								<br>
							</p>
							<p></p>
							- 디지털 콘텐츠의 제공이 개시된 경우, (다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우 제공이
							개시되지 아니한 부분은 청약철회를 할 수 있습니다.)
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.</p>
							<p>
								<br>
							</p>
							<p>(색상 교환, 사이즈 교환 등 포함)</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>
								<br>
							</p>
							<p>교환 및 반품 신청 안내</p>
							<p>
								<br>
							</p>
							<p>- 교환 및 반품 신청은 [마이페이지 > 주문배송조회] 페이지에서 바로 접수하실 수 있습니다.</p>
							<p>
								<br>
							</p>
							<p>- 교환 및 반품 기간은 배송완료일로부터 3일 이내 입니다. (단순변심, 주문 착오 구매에 따른 교환
								반품 신청인 경우)</p>
							<p>
								<br>
							</p>
							<p>- 교환 및 반품은 고객센터내 1:1문의 게시판을 통해서도 신청 가능합니다 (평일 9:00~18:00,
								토/일/공휴일 휴무)</p>
							<p>
								<br>
							</p>
							<p>- 반품신청 접수 후 필요 시, 고객님께 전화를 드리며, 전화상담 후 반품이 최종 결정 됩니다.</p>
							<p>
								<br>
							</p>
							<p>- 상품 불량 및 누락 시 반드시 사진 첨부하여, 교환/반품을 신청해 주시기 바랍니다.</p>
							<p>
								<br>
							</p>
							<p>- 상품 불량 및 하자 상품은 회수 후 처리 가능하므로 보관해 주셔야 합니다.</p>
							<p>
								<br>
							</p>
							<p>(교환/반품 접수 후, 2~5일 이내 택배기사님이 방문하여 상품 교환 및 회수 진행 합니다.)</p>
							<p>
								<br>
							</p>
							<p>- 비회원의 취소/교환/반품은 사이트 정책상 구매자의 임의로 취소/반품/교환이 불가합니다. 고객센터로
								문의해주시기 바랍니다.</p>
							<p>
								<br>
							</p>
							<p>- 고객님의 단순변심으로 인한 교환/반품시, 택배 박스단위로 배송비가 부과됩니다. 교환/반품 기본배송비는
								5,000원(왕복) 입니다.</p>
							<p>
								<br>
							</p>
							<p>- 분리 배송된 경우, 해당 분리 배송된 택배 건수 만큼의 왕복 배송비가 추가 발생합니다. 단, 남은
								결제금액이 택배비 무료 기준 금액 이상인 경우 2,500원(편도)만 부과됩니다.</p>
						</div>
					</div>
				</div>
				<div class="service_info">
					<div class="service_block">
						<div class="title">SERVICE INFO</div>
						<div class="detail"></div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<script src="/js/product/product.js"></script>
</body>
</html>