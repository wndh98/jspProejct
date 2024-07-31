<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document1</title>
<link rel="stylesheet" href="/css/board/board.css">
</head>

<body>
	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="/main.do">홈</a></li>
				<li><a href="#none">게시판</a></li>
				<li><a href="/board/RVList.do"><strong>상품 사용후기</strong></a></li>
			</ul>
		</div>
		<div class="board_container">
			<h1 class="title1">상품 사용후기</h1>
			<h2 class="title2">상품 사용후기입니다.</h2>
			<div class="product">
				<p class="thumbnail">
					<a href="#"><img src="/images/product/product1.png" alt=""></a>
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
					<h3>제목</h3>
					<div class="description">
						<span>작성자</span> <span>날짜</span> <span>조회수</span> <span>평점</span>
					</div>
				</div>
				<div class="attach">
					<a href="#none">product1.png</a>
				</div>
				<div class="review_image_box">
					<div class="board_text">
						<img src="/images/product/product1.png" alt=""> <br>
						귀여움 <br>
					</div>
				</div>
				<div class="board_crud">
					<a href="/board/RVList.do" class="b_btn_white">목록</a> <a
						href="/board/updateRV.do" class="b_btn_white">수정</a> <a
						href="/board/deleteRV.do" class="b_btn_white">삭제</a>
				</div>
				<div class="prev_next_page">
					<div class="page_list">
						<span> 이전 <i class="icon icoArrowTop"></i>
						</span>
						<p>
							<a href="#none">상품 오자마자 쓰는 후기</a>
						</p>
					</div>
					<div class="page_list">
						<span> 다음 <i class="icon icoArrowBottom"></i>
						</span>
						<p>
							<a href="#none">정말 귀여워요~~~</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>