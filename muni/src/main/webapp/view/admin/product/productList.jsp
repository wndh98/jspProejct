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
								<th></th>
								<th><a href="/admin/product/piWriteForm.do" type="button"
									class="btnBold">생성</a></th>
								<th>제품명</th>
								<th>가격</th>
								<th>재고</th>
								<th>배송비</th>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>
									<button class="btnBold">삭제</button>
								</td>
								<td>제품명</td>
								<td>가격</td>
								<td>재고</td>
								<td>배송비</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="btn_menu">
					<button class="btnBold_w">삭제</button>
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
	<script src="/js/admin/product/product.js"></script>
</body>

</html>