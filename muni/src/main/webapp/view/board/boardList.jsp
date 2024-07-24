<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/board/board.css">
</head>

<body>
	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="#none">홈</a></li>
				<li><a href="#none">게시판</a></li>
				<li><a href="#none">상품 사용후기</a></li>
			</ul>
		</div>
		<div class="board_container">
			<h1 class="title1">상품 사용후기</h1>
			<h2 class="title2">상품 사용후기입니다.</h2>
			<div class="board_list">
				<table class="board_table">
					<colgroup>
						<col style="width: 80px;">
						<col style="width: 85px;">
						<col style="width: auto;">
						<col style="width: 85px;">
						<col style="width: 120px;">
						<col style="width: 55px;">
						<col style="width: 80px;">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>상품정보</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회</th>
							<th>평점</th>
						</tr>
					</thead>
					<tr>
						<td>19</td>
						<td><img src="/images/6de767f8667c32d13761c505f8681e65.jpg"
							alt="dog"></td>
						<td>
							<p class="prd_title">shiba</p> <a href="#none">정말 귀여워요~~~</a>
						</td>
						<td class="b_writer">박****</td>
						<td class="b_date">2024-07-15<br>12:01:24
						</td>
						<td class="b_view">9</td>
						<td class="b_rating"><img
							src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating5.svg"
							alt="5점"></td>
					</tr>
					<tr>
						<td>18</td>
						<td><img src="/images/6de767f8667c32d13761c505f8681e65.jpg"
							alt="dog"></td>
						<td>
							<p class="prd_title">shiba</p> <a href="#none">맞을래요?</a>
						</td>
						<td class="b_writer">오****</td>
						<td class="b_date">2024-07-09<br>18:18:18
						</td>
						<td class="b_view">18</td>
						<td class="b_rating"><img
							src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating5.svg"
							alt="5점"></td>
					</tr>
					<tr>
						<td>17</td>
						<td><img src="/images/6de767f8667c32d13761c505f8681e65.jpg"
							alt="dog"></td>
						<td>
							<p class="prd_title">shiba</p> <a href="#none">상품 오자마자 쓰는 후기</a>
						</td>
						<td class="b_writer">민****</td>
						<td class="b_date">2024-07-06<br>09:18:11
						</td>
						<td class="b_view">21</td>
						<td class="b_rating"><img
							src="//img.echosting.cafe24.com/skin/skin/board/icon-star-rating5.svg"
							alt="5점"></td>
					</tr>
				</table>
				<div class="board_menu">
					<div class="search_form">
						<form>
							<select>
								<option value="">일주일</option>
								<option value="">한달</option>
								<option value="">세달</option>
								<option value="">전체</option>
							</select> <select>
								<option value="">제목</option>
								<option value="">내용</option>
								<option value="">글쓴이</option>
								<option value="">아이디</option>
								<option value="">별명</option>
								<option value="">상품정보</option>
							</select> <input type="text"> <input type="submit"
								class="btnNormal">
						</form>
					</div>
					<div class="board_crud">
						<a class="btnNormal">글쓰기</a>
					</div>
				</div>
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
			</div>
		</div>
	</div>

</body>

</html>