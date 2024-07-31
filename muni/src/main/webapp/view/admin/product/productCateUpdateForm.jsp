<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
					<form method="post" name="frm" onsubmit="return checkCate();"
						action="/admin/product/pcUpdate.do">
						<input type="hidden" name="pcId" value="${productCate.pcId}">
						<div class="boardTitle">
							<h3></h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>카테고리명</th>
								<td><input type="text" style="width: 100%" name="pcName"
									value="${productCate.pcName}"></td>
							</tr>
						</table>
						<div class="btn_menu">
							<button class="btnBold" type="submit" value="result">수정</button>
							<button class="btnBold_w" value="result" type="button" onclick="history.go(-1)">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--a href="/admin/product/pcUpdate.do"  -->
	</div>
</body>

</html>