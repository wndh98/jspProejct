<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/board/board.css">
<link
	href="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/css/froala_editor.pkgd.min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/froala-editor@3.1.0/js/froala_editor.pkgd.min.js"></script>
</head>


<body>

	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="/main.do">홈</a></li>
				<li><a href="#none">게시판</a></li>
				<li><a href="/board/RVList.do">상품 사용후기</a></li>
			</ul>
		</div>
		<div class="board_container">
			<h1 class="title1">상품 사용후기</h1>
			<div class="board_content">
				<form action="/board/writeRV.do" method="post">
					<table class="boardForm">
						<colgroup>
							<col style="width: 190px;">
							<col style="width: auto;">
						</colgroup>
						<tr>
							<th>제목</th>
							<td><input type="text" style="width: 80%" name="bSubject"
								required="required" autofocus="autofocus"></td>
						</tr>
						<tr>
							<th>본문</th>
							<td>
								<textarea rows="5" cols="40" style="width: 80%" name="bContent"
								required="required"></textarea>								
								<!-- <div id="froala" style="height: 500px"></div> -->
							</td>
						</tr>
						<tr>
							<th>평점</th>
							<td><input type="radio" name="bStar" value="5"
								id="rate1" checked="checked"><label for="rate1">5★</label> <input
								type="radio" name="bStar" value="4" id="rate2"><label
								for="rate2">4★</label> <input type="radio" name="bStar"
								value="3" id="rate3"><label for="rate3">3★</label> <input
								type="radio" name="bStar" value="2" id="rate4"><label
								for="rate4">2★</label> <input type="radio" name="bStar"
								value="1" id="rate5"><label for="rate5">1★</label></td>
						</tr>
<!-- 					<tr>
							<th>첨부파일</th>
							<td><input type="file" name=""></td>
						</tr> -->
						<tr>
							<th>비밀글 설정</th>
							<td><input type="radio" name="bScreate" id="setOpSe1"
								checked="checked" value="0"><label for="setOpSe1">공개글</label> <input
								type="radio" name="bScreate" id="setOpSe2" value="1"><label
								for="setOpSe2">비밀글</label></td>
						</tr>
					</table>
					<div class="btn_menu">
						<input class="btnBold_w" type="submit" value="글쓰기">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			var editor = new FroalaEditor('#froala', {
				heightMin : 440,
				heightMax : 800
			})
		});
	</script>
</body>

</html>