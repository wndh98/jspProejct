<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<li><a href="/main.do">홈</a></li>
				<li><a href="#none">게시판</a></li>
				<li><a href="/board/reviewList.do">상품 사용후기</a></li>
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
					<tr>
						<th>번호</th>
						<th>상품정보</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회</th>
						<th>평점</th>
					</tr>
					<c:if test="${empty list }">
						<tr>
							<th colspan="7">게시글이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty list }">
						<c:forEach var="board" items="${list }">
							<tr>
								<td>${board.bNum}</td>
								<td>사진</td>
								<td>
									<a href="/board/reviewContent.do?bNum=${board.bNum}&curPage=${curPage}">${board.bSubject }</a>
								</td>
								<td>${board.bWriter }</td>
								<td>${board.bDate }</td>
								<td>${board.bCount }</td>
								<td>${board.bStar }</td>
							</tr>
						</c:forEach>
					</c:if>

				</table>
				<div class="board_menu">
					<div class="search_form">
						<form>
							<select>
								<option value="">일주일</option>
								<option value="">한달</option>
								<option value="">세달</option>
								<option value="">전체</option>
							</select>
							<select>
								<option value="">제목</option>
								<option value="">내용</option>
								<option value="">글쓴이</option>
								<option value="">아이디</option>
								<option value="">별명</option>
								<option value="">상품정보</option>
							</select>
							<input type="text">
							<input type="submit" class="btnNormal">
						</form>
					</div>
					<div class="board_crud">
						<a href="/board/reviewWriteForm.do?curPage=${curPage }" class="btnNormal">글쓰기</a>
					</div>
				</div>
				<div class="paging">
					<c:if test="${pagination.curPage ne 1 }">
						<a class="prev_btn" href="/board/reviewList.do?curPage=${pagination.prevPage}"></a>
					</c:if>
					<ul class="page_list">
						<c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
							<c:choose>
								<c:when test="${pageNum eq  pagination.curPage}">
									<li><a class="on" href="/board/reviewList.do?curPage=${pageNum}">${pageNum }</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/board/reviewList.do?curPage=${pageNum}">${pageNum}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>
					<c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
						<a class="next_btn" href="/board/reviewList.do?curPage=${pagination.nextPage }"></a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

</body>

</html>