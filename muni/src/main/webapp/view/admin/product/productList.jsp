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
			<div class="board_container">
				<div class="board_content">

					<table class="boardForm">
						<colgroup>
							<col style="width: auto;">
							<col style="width: auto;">
							<col style="width: auto;">
							<col style="width: auto;">
							<col style="width: auto;">
							<col style="width: auto;">
						</colgroup>
						<tr>
							<th></th>
							<th><a href="/admin/product/piWriteForm.do" type="button"
								class="btnBold">생성</a></th>
							<th>제품명</th>
							<th>가격</th>
							<th>재고</th>
							<th>배송비</th>
						</tr>
						<c:forEach items="${list}" var="product">
							<tr>
								<td></td>
								<td>

									<button class="btnBold"
										onclick="location.href='/admin/product/piDelete.do?piNum=${product.piNum}&curPage=${pagination.curPage }'">삭제</button>
								</td>
								<td><a href="/admin/product/piUpdateForm.do?piNum=${product.piNum}&curPage=${pagination.curPage}">${product.piName}</a></td>
								<td>${product.piPrice}</td>
								<td>${product.piCount}</td>
								<td>${product.piDelivery}</td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>
			<div class="paging">
				<c:if test="${pagination.curPage ne 1 }">
					<a class="prev_btn"
						href="/admin/product/piList.do?curPage=${pagination.prevPage}"></a>
				</c:if>
				<ul class="page_list">
					<c:forEach var="pageNum" begin="${pagination.startPage }"
						end="${pagination.endPage }">
						<c:choose>
							<c:when test="${pageNum eq  pagination.curPage}">
								<li><a class="on"
									href="/admin/product/piList.do?curPage=${pageNum}">${pageNum }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="/admin/product/piList.do?curPage=${pageNum}">${pageNum}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ul>
				<c:if
					test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
					<a class="next_btn"
						href="/admin/product/piList.do?curPage=${pagination.nextPage }"></a>
				</c:if>
			</div>
		</div>
	</div>
	<script src="/js/admin/product/product.js"></script>
</body>

</html>