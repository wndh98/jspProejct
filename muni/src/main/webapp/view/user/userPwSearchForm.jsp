<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
				<li><a href="#none">홈</a></li>
				<li><a href="#none">로그인</a></li>
			</ul>
		</div>
		<div class="small_container">
			<h1 class="title1">비밀번호 찾기</h1>
			<h2 class="title2">가입하신 방법에 따라 비밀번호 찾기가 가능합니다.</h2>
			<form action="/user/userPwSearch.do" method="post">
				<div class="login_form">
					<strong>아이디</strong>
					<input type="text" name="userId" required>
					<strong>이름</strong>
					<input type="text" name="userName" required>
					<strong class="option1">이메일</strong>
					<input type="text" required class="option1" name="userEmail">
					<strong class="option1">변경할 비밀번호</strong>
					<input type="text" required class="option1" name="userPassword" pattern="^(?=.*[a-zA-Z])(?=.*\d|.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{10,16}$|^(?=.*\d)(?=.*[a-zA-Z!@#$%^&*])[\d!@#$%^&*a-zA-Z]{10,16}$|^(?=.*[!@#$%^&*])(?=.*[a-zA-Z\d])[!@#$%^&*a-zA-Z\d]{10,16}$" title="영문 대소문자, 숫자, 특수문자 중 2가지 이상의 조합, 10~16자 길이로 입력해주세요.">
					<input type="submit" class="btnBold" value="확인">
				</div>
			</form>
		</div>
	</div>
</body>
</html>