<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/admin/member/sidebars.css">
<link rel="stylesheet" href="/style.css">
<link rel="stylesheet" href="/admin/admin_style.css">
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
									<th><button class="btnBold">생성</button></th>
									<th>카테고리명</th>
								</tr>
								<tr>
									<td>
										<button class="btnBold_w">하위</button>
										<button class="btnBold">삭제</button>
									</td>
									<td>카테고리명</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</form>
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
</body>

</html>