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
									<col style="width: auto;">
									<col style="width: auto;">
									<col style="width: auto;">
									<col style="width: auto;">
									<col style="width: auto;">
									<col style="width: auto;">
								</colgroup>
								<tr>
									<th><a href="/admin/product/pcForm.do" class="btnBold">생성</a></th>
									<th>카테고리명</th>
								</tr>
								<c:forEach var="proCate" items="${list}">
									<tr>
										<td><a class="btnBold_w"
											href="/admin/product/
										pcForm.do?pcId=${proCate.pcId}">하위</a>
											<button class="btnBold">삭제</button></td>
										<td>${proCate.pcName}</td>
									</tr>
								</c:forEach>
							</table>
						</form>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>

</html>