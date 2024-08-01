<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document1</title>
<link rel="stylesheet" href="/css/board/board.css">
<c:if test="${userId eq null }">
	<script>
		alert("잘못된 접근입니다.");
		location.href = "/";
	</script>
</c:if>
</head>

<body>
	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="/main.do">홈</a></li>
				<li><a href="#none">게시판</a></li>
				<li><a href="/board/RVList.do">
						<strong>상품 사용후기</strong>
					</a></li>
			</ul>
		</div>
		<div class="board_container">
			<h1 class="title1">상품 사용후기</h1>
			<h2 class="title2">상품 사용후기입니다.</h2>
			<div class="product">
				<p class="thumbnail">
					<a href="#">
						<img src="/images/product/product1.png" alt="">
					</a>
				</p>
				<div class="information">
					<h3>
						<a href="/product/detail.html?product_no=77" id="">시바견펀치</a>
					</h3>
					<p class="price">25,000원</p>
				</div>
			</div>
			<div class="board_content">
				<div class="board_top">
					<h3>${board.bSubject }</h3>
					<div class="description">
						<span>${board.bWriter }</span> <span>${board.bDate }</span> <span>${board.bCount }</span> <span>${board.bStar }</span>
					</div>
				</div>
				<div class="attach">
					<!-- <a href="#none">product1.png</a> -->
				</div>
				<div class="review_image_box">
					<div class="board_text">
						<pre>${board.bContent}</pre>
					</div>
				</div>
				<div class="board_crud">
					<a href="/board/reviewList.do?curPage=${curPage}" class="b_btn_white">목록</a>
					<a href="/board/reviewUpdateForm.do?curPage=${curPage}" class="b_btn_white">수정</a>
					<a href="/board/reviewDelete.do?curPage=${curPage}" class="b_btn_white">삭제</a>
				</div>

				<div class="prev_next_page">
					<c:if test="${preBoard ne null}">
						<div class="page_list">
							<span> 이전 <i class="icon icoArrowTop"></i>
							</span>
							<p>
								<a href="/board/reviewContent.do?bNum=${preBoard.bNum}&curPage=${curPage}">${preBoard.bSubject }</a>
							</p>
						</div>
					</c:if>
					<c:if test="${afterBoard ne null}">
						<div class="page_list">
							<span> 다음 <i class="icon icoArrowBottom"></i>
							</span>
							<p>
								<a href="/board/reviewContent.do?bNum=${afterBoard.bNum}&curPage=${curPage}">${afterBoard.bSubject }</a>
							</p>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>

</html>