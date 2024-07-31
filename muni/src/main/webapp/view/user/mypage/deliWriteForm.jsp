<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/user/mypage.css">
</head>
<body>
	<div id="container">
		<div class="contents">
			<!-- 본체 부분 -->
			<!-- 홈/마이쇼핑 -->
			<div class="section_titleArea">
				<span></span>
				<ol>
					<li><a href="/">홈</a></li>
					<li><a href="">마이쇼핑</a></li>
					<li><strong>배송지관리</strong></li>
				</ol>
			</div>
			<div class="section benefit"></div>
			<div class="myshopArea">
				<div class="titleArea_mywish">
					<h2>배송지관리</h2>
				</div>
				<form action="/user/mypage/deliWrite.do" method="post">
					<div class="board_container">
						<div class="board_content">
							<table class="boardForm">
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tr>
									<th>배송지명</th>
									<td>
										<input type="text" name="udSubject" required>
									</td>
								</tr>
								<tr>
									<th>수취인명</th>
									<td>
										<input type="text" name="udName" required>
									</td>
								</tr>
								<tr>
									<th>주소</th>
									<td>
										<input type="text" style="width: 30%" name="udAddressNum" readonly id="addr1" required>
										<button type="button" class="btn_white search_btn" onclick="sample2_execDaumPostcode()">주소검색</button>
										<input type="text" name="udAddress" readonly id="addr2" required> <input type="text" name="udAddressEtc" id="addr3">
									</td>
								</tr>
								<tr>
									<th>일반전화</th>
									<td>
										<input type="text" name="udTel" required>
									</td>
								</tr>
								<tr>
									<th>일반전화</th>
									<td>
										<input type="text" name="udPhone" required>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="btn_menu">
						<button class="btnBold_w">배송지등록</button>
					</div>
				</form>
				<div class="order"></div>
				<div class="myshopMain">
					<div class="subTitle">
						<h3>나의 쇼핑 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/user/mypage/orderList.do">주문내역 조회</a></li>
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
						<li class=""><a href="/user/mypage/deliList.do">나의 게시글</a></li>
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
	<div id="layer" style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/js/daumMap.js"></script>
</body>
</html>