<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/user/user.css">
<c:if test="${userId!=null }">
	<script>
		alert("잘못된 접근입니다.");
		location.href="/";
	</script>
</c:if>
</head>


<body>
	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="/main.do">홈</a></li>
				<li><a href="/user/loginForm.do">로그인</a></li>
			</ul>
		</div>
		<div class="small_container">
			<h1 class="title1">로그인</h1>
			<form action="/user/loginAction.do" method="post" name="frm">
				<div class="login_form">
					<input type="text" placeholder="아이디" name="userId" required>
					<input type="password" placeholder="비밀번호" name="userPassword"
						required> <input type="submit" class="btnBold" value="로그인">
				</div>
			</form>
			<div class="member_search">
				<a href="#none">아이디 찾기</a> <a href="#none">비밀번호 찾기</a>
			</div>
			<div class="member_join">
				<strong>아직 회원이 아니신가요?</strong>
				<p>
					지금 회원가입을 하시면<br> 다양하고 특별한 혜택이 준비되어 있습니다.
				</p>
				<a class="btnBold_w" href="/user/joinAgree.do">회원가입</a>
			</div>
		</div>
	</div>


</body>

</html>