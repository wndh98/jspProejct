<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result>0 }">
		<script>
			alert("회원가입이 완료되었습니다.");
			location.href = "/user/loginForm.do";
		</script>
	</c:if>
	<c:if test="${result==0 }">
		<script>
			alert("잘못된 접근입니다.");
			location.href = "/main.do";
		</script>
	</c:if>
</body>
</html>