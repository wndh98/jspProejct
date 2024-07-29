<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>
	<div class="row mb-3">
		<div class="col-md-2 themed-grid-col"></div>
		<div class="col-md-8 themed-grid-col">
			<form>
				<div class="board_container">

					<div class="board_content">
						<form>
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
									<th>구분</th>
									<th>아이디</th>
									<th>이름</th>
									<th>이메일</th>
									<th>전화번호</th>
									<th>가입일</th>
								</tr>
								<tr>
									<td><input type="checkbox"></td>
									<td>아이디</td>
									<td>이름</td>
									<td>이메일</td>
									<td>전화번호</td>
									<td>가입일</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<div class="btn_menu">
					<button class="btnBold_w">삭제</button>
				</div>
			</form>
			<div class="paging">
				<c:if test="${pagination.curPage  ne 1 }">
					<a class="prev_btn" href="/admin/user/userList.do?curPage=${pagination.prevPage}"></a>
				</c:if>
				<ul class="page_list">
					<c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
						<c:choose>
							 <c:when test="${pageNum eq  pagination.curPage}">
								<li><a class="on" href="/admin/user/userList.do?curPage=${pageNum}">${pageNum }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="/admin/user/userList.do?curPage=${pageNum}">${pageNum}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>
				 <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
					<a class="next_btn" href="/admin/user/userList.do?curPage=${pagination.nextPage }"></a>
				</c:if>
			</div>
		</div>
	</div>

</body>

</html>