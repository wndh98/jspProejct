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
<link rel="stylesheet" href="/admin/member/sidebars.css">
<link rel="stylesheet" href="/style.css">
<link rel="stylesheet" href="/admin/admin_style.css">
</head>

<body>
	<div class="row mb-3">
		<div class="col-md-2 themed-grid-col"></div>
		<div class="col-md-8 themed-grid-col">
			<div class="board_container">
				<div class="board_content">

					<form>
						<div class="boardTitle">
							<h3></h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: auto">
								<col style="width: auto;">
								<col style="width: auto;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>상품번호</th>
								<th>이미지</th>
								<th>상품명</th>
								<th>주문상태</th>
							</tr>
							<tr>
							</tr>
							<tr>
								<td>1</td>
								<td><img src=""></td>
								<td>상품명</td>
								<td><select>
										<option>주문</option>
										<option>접수</option>
										<option>배송</option>
										<option>완료</option>
										<option>환불요청</option>
										<option>환불</option>
								</select></td>
							</tr>
						</table>
						<div class="boardTitle">
							<h3></h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>주문아이디</th>
								<td></td>
							</tr>
							<tr>
								<th>주문자 아이디</th>
								<td></td>
							</tr>
							<tr>
								<th>주문자 명</th>
								<td></td>
							</tr>
							<tr>
								<th>배송지</th>
								<td></td>
							</tr>
							<tr>
								<th>주문일</th>
								<td></td>
							</tr>
						</table>
						<div class="btn_menu">
							<button class="btnBold">삭제</button>
							<button class="btnBold_w">수정하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>