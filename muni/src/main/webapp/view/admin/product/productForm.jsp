<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
    <script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/js/froala_editor.pkgd.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/css/froala_editor.pkgd.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/admin/member/sidebars.css">
<link rel="stylesheet" href="/style.css">
<link rel="stylesheet" href="/admin/admin_style.css">
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
</style>
</head>
<body>
	<div class="row mb-3">
		<div class="col-md-2 themed-grid-col"></div>
		<div class="col-md-8 themed-grid-col">
			<div class="board_container">
				<div class="board_content">

					<form>
						<div class="boardTitle">
							<h3>기본</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>옵션</th>
								<td><input type="checkbox"><label>HIT</label> <input
									type="checkbox" id="color" value="color"><label
									for="color">색상</label> <input type="checkbox" id="size"
									class="sizeChk"><label for="size" class="sizeChk">사이즈</label>
								</td>
							</tr>
							<tr>
								<th>제품명</th>
								<td><input type="text" style="width: 100%"></td>
							</tr>
							<tr>
								<th>제품가격</th>
								<td><input type="number"></td>
							</tr>
							<tr>
								<th>할인가</th>
								<td><input type="number"></td>
							</tr>
							<tr>
								<th>배송비</th>
								<td><input type="number"></td>
							</tr>
							<tr>
								<th>재고</th>
								<td><input type="number"></td>
							</tr>
						</table>
						<div class="optionStyle">
							<div class="boardTitle">
								<h3>
									색상
									<button type="button" class="btnBold_w colorAdd">추가</button>
								</h3>
							</div>
							<table class="boardForm colorTable">
								<colgroup>
									<col style="width: 190px;">
									<col style="width: auto;">
								</colgroup>
								<tr>
									<th>색상명</th>
									<td><input type="text">
									<button type="button" class="btnBold colorDel">삭제</button></td>
								</tr>
								<tr class="color">
									<th>제품가격</th>
									<td><input type="number"></td>
								</tr>
								<tr class="color">
									<th>할인가</th>
									<td><input type="number"></td>
								</tr>
								<tr class="color">
									<th>재고</th>
									<td><input type="number"></td>
								</tr>
								<tr class="size" style="display: none">
									<th>사이즈
										<button type="button" class="btnBold_w sizeAdd">추가</button>
									</th>
									<td class="sizeTd">
										<table class="boardForm sizeTable">
											<colgroup>
												<col style="width: 190px;">
												<col style="width: auto;">
											</colgroup>
											<tr>
												<th>사이즈</th>
												<td><input type="text">
												<button type="button" class="btnBold sizeDel">삭제</button></td>
											</tr>
											<tr>
												<th>제품가격</th>
												<td><input type="number"></td>
											</tr>
											<tr>
												<th>할인가</th>
												<td><input type="number"></td>
											</tr>
											<tr>
												<th>재고</th>
												<td><input type="number"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
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
									<div id="froala"></div>
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
								<td><input type="file"></td>
							</tr>
							<tr>
								<th>파일2</th>
								<td><input type="file"></td>
							</tr>
							<tr>
								<th>파일3</th>
								<td><input type="file"></td>
							</tr>
							<tr>
								<th>파일4</th>
								<td><input type="file"></td>
							</tr>
							<tr>
								<th>파일5</th>
								<td><input type="file"></td>
							</tr>
							<tr>
								<th>파일6</th>
								<td><input type="file"></td>
							</tr>
						</table>
						<div class="btn_menu">
							<button class="btnBold">삭제</button>
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