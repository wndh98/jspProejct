<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/css/froala_editor.pkgd.min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/js/froala_editor.pkgd.min.js"></script>
<title>Document</title>
<style>
table {
	border-top: 2px solid #000;
}

.size, .optionStyle {
	display: none;
}

.sizeChk {
	display: none;
}

#insertVideo-1 {
	display: none;
}
</style>
</head>
<body>
	<div class="row mb-3">
		<div class="col-md-2 themed-grid-col"></div>
		<div class="col-md-8 themed-grid-col">
			<div class="board_container">
				<div class="board_content">

					<form action="/admin/product/piUpdate.do" method="post"
						enctype="multipart/form-data">
						<input type="hidden" name="piNum" value="${product.piNum}">
						<input type="hidden" name="curPage" value="${curPage}">
						<div class="boardTitle">
							<h3>기본</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>카테고리</th>
								<td><select name="pcId">
										<c:forEach var="proCate" items="${list}" varStatus="vs">
											<option value="${proCate.pcId}"
												<c:if test="${proCate.pcId eq product.pcId}">selected</c:if>>
												${proCate.pcName}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<th>옵션</th>
								<td><input type="checkbox" value="1" name="piHit"
									<c:if test="${product.piHit eq 1}">checked</c:if>><label>HIT</label>
								</td>
							</tr>
							<tr>
								<th>제품명</th>
								<td><input type="text" name="piName"
									value="${product.piName}"></td>

							</tr>
							<tr>
								<th>소비자가격</th>
								<td><input type="number" name="piCprice"
									value="${product.piCprice}"></td>
							</tr>
							<tr>
								<th>제품가격</th>
								<td><input type="number" name="piPrice"
									value="${product.piPrice}"></td>
							</tr>
							<tr>
								<th>할인가</th>
								<td><input type="number" name="piSailPrice"
									value="${product.piSailPrice}"></td>
							</tr>
							<tr>
								<th>배송비</th>
								<td><input type="number" name="piDelivery"
									value="${product.piDelivery}"></td>
							</tr>
							<tr>
								<th>재고</th>
								<td><input type="number" name="piCount"
									value="${product.piCount}"></td>
							</tr>
						</table>

						<div class="boardTitle">
							<h3>상세내용</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>내용</th>
								<td>
									<div id="froala">
										<input type="hidden" name="piContent" value="${product.piContent}">
									</div>
								</td>
							</tr>
						</table>
						<div class="boardTitle">
							<h3>이미지</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>파일1</th>
								<td><input type="file" name="piFile1"></td>
							</tr>
							<tr>
								<th>파일2</th>
								<td><input type="file" name="piFile2"></td>
							</tr>
							<tr>
								<th>파일3</th>
								<td><input type="file" name="piFile3"></td>
							</tr>
							<tr>
								<th>파일4</th>
								<td><input type="file" name="piFile4"></td>
							</tr>
							<tr>
								<th>파일5</th>
								<td><input type="file" name="piFile5"></td>
							</tr>
							<tr>
								<th>파일6</th>
								<td><input type="file" name="piFile6"></td>
							</tr>
							<tr>
								<th>파일7</th>
								<td><input type="file" name="piFile7"></td>
							</tr>
						</table>
						<div class="btn_menu">
							<button class="btnBold" type="button"
								onclick="location.href='/admin/product/piList.do'">이전</button>
							<button class="btnBold_w">작성하기</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<script src="/js/admin/product/product.js"></script>
</body>

</html>