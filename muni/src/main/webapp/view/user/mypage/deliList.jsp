<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<li><a href="https://munigrabby.com/myshop/index.html">마이쇼핑</a>
					</li>
					<li><strong>나의 위시리스트</strong></li>
				</ol>
			</div>
			<div class="section benefit"></div>
			<div class="myshopArea">
				<div class="titleArea_mywish">
					<h2>배송지관리</h2>
				</div>
				<c:if test="${deliList.size() > 0}">
				<div class="board_container">

					<div class="board_content">

						<table class="boardForm">
							<colgroup>
								<col style="width: 100px;">
								<col style="width: auto;">
								<col style="width: auto;">
								<col style="width: auto;">
								<col style="width: auto;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>배송지명</th>
								<th>수령인</th>
								<th>일반전화</th>
								<th>휴대전화</th>
								<th>주소</th>
								<th>수정</th>
							</tr>
							<c:forEach items="${deliList }" var="deli">
								<tr>
									<td>
										${deli.udSubject}
									</td>
									<td>
										${deli.udName }
									</td>
									<td>${deli.udTel}</td>
									<td>${deli.udPhone }</td>
									<td>${deli.udAddress }</td>
									<td><a class="btnBold_w" href="/user/mypage/deliUpdateForm.do?udNum=${deli.udNum}" style="width:30px;height:20px">수정</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<div class="btn_menu">
					<a class="btnBold_w" href="/user/mypage/deliWriteForm.do">배송지등록</a>
				</div>
				
				
				
				
				
				
				</c:if>
				<c:if test="${deliList.size() eq 0}">
				<div class="myshop_wishlist">
				
					
					<p class="empty">
						<svg xmlns="http://www.w3.org/2000/svg" width="65" height="64"
							fill="none" viewBox="0 0 65 64" class="icon" role="img">
                                <path
								d="M63.3 32C63.3 49.0104 49.5104 62.8 32.5 62.8C15.4896 62.8 1.7 49.0104 1.7 32C1.7 14.9896 15.4896 1.2 32.5 1.2C49.5104 1.2 63.3 14.9896 63.3 32Z"
								stroke="#D9D9D9" stroke-width="2.4" stroke-linecap="round"
								stroke-linejoin="round">
                                </path>
                                <path d="M32.5 18.6665V34.6665"
								stroke="#D9D9D9" stroke-width="2.4" stroke-linecap="round"
								stroke-linejoin="round"></path>
                                <path d="M32.5 40V44" stroke="#D9D9D9"
								stroke-width="2.4" stroke-linecap="round"
								stroke-linejoin="round"></path>
                            </svg>
						관심상품 내역이 없습니다
					</p>
				</div>
				</c:if>
				<div class="order"></div>
				<div class="myshopMain">
					<div class="subTitle">
						<h3>나의 쇼핑 정보</h3>
					</div>
					<ul class="menu">
						<li><a href="/user/mypage/orderList.do">주문내역 조회</a></li>
						<li><a href="/myshop/mileage/historyList.html">적립금 내역</a></li>
						<li class=""><a href="/myshop/coupon/coupon.html">쿠폰 내역</a></li>
						<li><a href="/user/mypage/deliList.do">배송 주소록 관리</a></li>
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
						<li class="statelogon"><a href="/user/logout.do">로그아웃</a>
						</li>
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