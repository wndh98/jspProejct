<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script>
	function del(pcId) {
		let cf = confirm("정말로 삭제하시겠습니까?");

		if (cf) {
			location.href = "/admin/product/pcDelete.do?pcId=" + pcId;
		} else {
			alert("삭제가 취소되었습니다");
		}
	}
</script>
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
								<col style="width: 200px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th><a href="/admin/product/pcForm.do" class="btnBold"
									style="width: 150px">생성</a></th>
								<th>카테고리명</th>
							</tr>
							<c:forEach var="proCate" items="${list}" varStatus="vs">
								<tr>
									<td style="display: flex"><a class="btnBold_w"
										href="/admin/product/
										pcForm.do?pcId=${proCate.pcId}"
										style="width: 50px">하위</a>
										<button class="btnBold" onclick="del('${proCate.pcId}')"
											type="button">삭제</button></td>
									<td><a
										href="/admin/product/productCateUpdateForm.do?pcId=${proCate.pcId}">
											<c:forEach var="i" begin="2" end="${proCate.pcId.length()/2}">
												&emsp;
											</c:forEach> ${proCate.pcName}
									</a></td>
								</tr>
							</c:forEach>
						</table>
					</form>
				</div>
			</div>

		</div>
	</div>
</body>

</html>