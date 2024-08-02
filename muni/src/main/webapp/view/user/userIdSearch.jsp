<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<li><a href="#none">아이디 찾기</a></li>
			</ul>
		</div>
		
		<div class="small_container">
			<h1 class="title1">아이디 찾기</h1>
			<h2 class="title2">고객님 아이디 찾기가 완료 되었습니다.</h2>
			<h2 class="title2">가입된 아이디가 총 ${findUsers.size()}개 있습니다.</h2>
			<div class="result">
				<div>
					<span>이름</span>
					<p>${userName}</p>
				</div>
				<div>
					<span>이메일</span>
					<p>${userEmail }</p>
				</div>
			</div>
			<div class="id_result">
				<c:forEach items="${findUsers}" var="fu">
					<p>${fu.userId }</p>
				</c:forEach>
			</div>
			<div class="link_menu">
				<a class="btn_white" href="/user/loginForm.do">로그인</a>
				<a class="btn_black" href="/user/userPwSearchForm.do">비밀번호 찾기</a>
			</div>
		</div>
	</div>
</body>
</html>