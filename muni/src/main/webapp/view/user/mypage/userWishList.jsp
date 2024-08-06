<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>

	<div class="container">
		<div class="contents">
			<!-- 본체 부분 -->

			<!-- 홈/마이쇼핑 -->
			<div class="section_titleArea">
				<span></span>
				<ol>
					<li><a href="/">홈</a></li>
					<li><a href="">마이쇼핑</a></li>
					<li><strong>나의 위시리스트</strong></li>
				</ol>

			</div>
			<div class="section benefit"></div>
			<div class="myshopArea">
				<div class="titleArea_mywish">
					<h2>나의 위시리스트</h2>
				</div>
				<div class="myshop_wishlist">
					<c:if test="${list ne null}">
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
					</c:if>
					<c:if test="${list eq null}">
						<p class="empty">
							<svg xmlns="http://www.w3.org/2000/svg" width="65" height="64" fill="none" viewBox="0 0 65 64" class="icon" role="img">
                                <path d="M63.3 32C63.3 49.0104 49.5104 62.8 32.5 62.8C15.4896 62.8 1.7 49.0104 1.7 32C1.7 14.9896 15.4896 1.2 32.5 1.2C49.5104 1.2 63.3 14.9896 63.3 32Z" stroke="#D9D9D9" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round">
                                </path>
                                <path d="M32.5 18.6665V34.6665" stroke="#D9D9D9" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"></path>
                                <path d="M32.5 40V44" stroke="#D9D9D9" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"></path>
                            </svg>
							관심상품 내역이 없습니다
						</p>
					</c:if>
				</div>
				<div class="order"></div>
				<div class="myshopMain">
					<div class="subTitle">
						<h3>나의 쇼핑 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/user/mypage/orderList.do">주문내역 조회</a></li>
						<li><a href="#">적립금 내역</a></li>
						<li><a href="/user/mypage/deliList.do">배송 주소록 관리</a></li>
					</ul>
					<div class="subTitle">
						<h3>활동 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/user/mypage/userWishList.do">나의 위시리스트</a></li>
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