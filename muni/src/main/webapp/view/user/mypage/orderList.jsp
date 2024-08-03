<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/user/mypage_order_check.css">
<c:if test="${userId eq null }">
	<script>
		alert("로그인후 이용해주세요.");
		location.href="/user/loginForm.do";
	</script>
</c:if>
</head>
<body>
	<div id="container">
		<div id="contents">
			<div class="breadcrumbs">
				<ul>
					<li><a href="#none">홈</a></li>
					<li><a href="#none">마이쇼핑</a></li>
					<li><a href="#none">
							<strong>주문조회</strong>
						</a></li>
				</ul>
			</div>
			<div class="myshopArea">
				<div class="titleArea titleArea_myorder">
					<h2>주문조회</h2>
				</div>
				<div class="section_menu">
					<ul>
						<li class="on"><a>
								주문내역조회 &#40;
								<span>1</span>
								&#41;
							</a></li>
						<li><a>
								취소/반품/교환 내역 &#40;
								<span>0</span>
								&#41;
							</a></li>
					</ul>
				</div>
				<form id="OrderHistoryForm" name="OrderHistoryForm">
					<div class="orderhistoryhead">
						<fieldset class="form">
							<div class="state_select">
								<select>
									<option>전체 주문처리상태</option>
									<option>입금전</option>
									<option>배송준비중</option>
									<option>배송중</option>
									<option>배송완료</option>
									<option>취소</option>
									<option>교환</option>
									<option>반품</option>
								</select>
								<span class="period">
									<a href="#" class="btnNormal_w sizeM "> 오늘 </a>
									<a href="#" class="btnNormal_w sizeM selected"> 1개월 </a>
									<a href="#" class="btnNormal_w sizeM "> 3개월 </a>
									<a href="#" class="btnNormal_w sizeM "> 6개월 </a>
								</span>
								<div class="date">
									<span class="datepicker">
										<input type="date" id="history_start_date" name="history_start_date" class="fText hasDatepicker" size="10" value="2024-06-18">
										&#126;
										<input type="date" id="history_end_date" name="history_end_date" class="fText hasDatepicker" size="10" value="2024-07-18">
									</span>
									<span class="btnSubmit sizeM">
										조회
										<input alt="조회" id="order_search_btn" type="image" src="/images/btn_search.gif">
									</span>
								</div>
							</div>
						</fieldset>
					</div>
				</form>
				<div class="myshop_orderlist">
					<div class="conbox">
						<div class="conbox2">
							<!-- 여기까지 위시리스트 -->
							<!-- 추가 -->
							<div class="prdBox">
								<div class="imagebox">
									<img src="/images/product/b30b39630c23c4875f9f10972842e634.png" alt="">
								</div>
								<div class="description">
									Ribbon underpants mini skirt (black)
									<ul>
										<li class="paid">결제 금액: 26,000원</li>
									</ul>
								</div>
								<span class="delivery_state"> 배송 준비중 </span>
								<div class="buttonArea">
									<span class="Right">
										<button type="button" class="btnNormal sizeS ">환불 요청</button>
										<button type="button" class="btnSubmit sizeS ">구매 확정</button>
									</span>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="paging">
					<a class="first_btn"></a>
					<a class="prev_btn"></a>
					<ul class="page_list">
						<li><a class="on" href="#none">1</a></li>
					</ul>
					<a class="next_btn"></a>
					<a class="last_btn"></a>
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
						<li><a href="/user/mypage/deliList.do">배송 주소록 관리</a></li>
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
						<li><a href="/user/mypage/userUpdateForm.do">회원 정보 수정</a></li>
						<li class="statelogon"><a href="/user/logout.do">로그아웃</a></li>
					</ul>

					<div class="consult">
						<a href="" class="btn">1:1 문의하기</a>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
</body>
</html>