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
				<li><a href="boardList.do">${title}</a></li>
			</ul>
		</div>
		<div class="board_container">
			<h1 class="title1">${title}</h1>
			<h2 class="title2">${title}입니다.</h2>
			<div class="board_list">
				<table class="board_table">
					<colgroup>
						<col style="width: 80px;">
						<%-- <col style="width: 85px;"> --%>
						<col style="width: auto;">
						<col style="width: 85px;">
						<col style="width: 120px;">
						<col style="width: 55px;">
						<c:if test="${boardType eq 'review' }">
							<col style="width: 80px;">
						</c:if>
					</colgroup>
					<tr>
						<th>번호</th>
						<!-- <th>상품정보</th> -->
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회</th>
						<c:if test="${boardType eq 'review' }">
							<th>평점</th>
						</c:if>
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
								<td>
									<a href="boardContent.do?bNum=${board.bNum}&curPage=${curPage}">${board.bSubject }</a>
								</td>
								<td>${board.bWriter }</td>
								<td>${board.bDate }</td>
								<td>${board.bCount }</td>
								<c:if test="${boardType eq 'review' }">
									<td>${board.bStar }</td>
								</c:if>
							</tr>
						</c:forEach>
					</c:if>

				</table>
				<!-- 				<div class="board_menu">
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
							</select>
							<input type="text">
							<input type="submit" class="btnNormal">
						</form>
					</div> -->
				<c:if test="${boardType eq 'notice'}">
					<c:if test="${userId eq 'admin'}">
						<div class="board_crud">
							<a href="boardWriteForm.do?curPage=${curPage }" class="btnNormal">글쓰기</a>
						</div>
					</c:if>
				</c:if>
				<c:if test="${boardType ne 'notice'}">
					<c:if test="${userId ne null}">
						<div class="board_crud">
							<a href="boardWriteForm.do?curPage=${curPage }" class="btnNormal">글쓰기</a>
						</div>
					</c:if>
				</c:if>
			</div>
			<div class="paging">
				<c:if test="${pagination.curPage ne 1 }">
					<a class="prev_btn" href="boardList.do?curPage=${pagination.prevPage}"></a>
				</c:if>
				<ul class="page_list">
					<c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
						<c:choose>
							<c:when test="${pageNum eq  pagination.curPage}">
								<li><a class="on" href="boardList.do?curPage=${pageNum}">${pageNum }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="boardList.do?curPage=${pageNum}">${pageNum}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>
				<c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
					<a class="next_btn" href="boardList.do?curPage=${pagination.nextPage }"></a>
				</c:if>
			</div>
		</div>
	</div>
	</div>

</body>

</html>