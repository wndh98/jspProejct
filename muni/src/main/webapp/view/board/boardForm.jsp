<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li><a href="#none">홈</a></li>
				<li><a href="#none">게시판</a></li>
				<li><a href="#none">공지사항</a></li>
			</ul>
		</div>
		<div class="board_container">
			<h1 class="title1">공지사항</h1>
			<div class="board_content">
				<form>
					<table class="boardForm">
						<colgroup>
							<col style="width: 190px;">
							<col style="width: auto;">
						</colgroup>
						<tr>
							<th>제목</th>
							<td><input type="text" style="width: 80%"></td>
						</tr>
						<tr>
							<th>본문</th>
							<td>
								<div id="froala" style="height: 500px"></div>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td><input type="file"></td>
						</tr>
						<tr>
							<th>비밀글 설정</th>
							<td><input type="radio"><label>공개글</label> <input
								type="radio"><label>비밀글</label></td>
						</tr>
					</table>
					<div class="btn_menu">
						<!-- <button class="btnBold"> 1</button> -->
						<button class="btnBold_w">글쓰기</button>
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