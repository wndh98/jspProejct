<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="#none">홈</a></li>
				<li><a href="#none">로그인</a></li>
			</ul>
		</div>
		<div class="small_container">
			<h1 class="title1">아이디 찾기</h1>
			<h2 class="title2">
				가입하신 방법에 따라 아이디 찾기가 가능합니다.<br>
			</h2>
			<form action="/user/userIdSearch.do" method="post">
				<div class="login_form">
					<span>이름</span>
					<input type="text" name="userName" required>
					<span>이메일</span>
					<input type="text" required name="userEmail">
					<input type="submit" class="btnBold" value="확인">
				</div>
			</form>
		</div>
	</div>

</body>
</html>