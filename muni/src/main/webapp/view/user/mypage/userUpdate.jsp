<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:if test="${userId eq null }">
	<script>
		alert("로그인후 이용해주세요.");
		location.href="/user/loginForm.do";
	</script>
</c:if>
</head>
<body>
	<c:if test="${result>0 }">
		<script>
			alert("수정이 완료되었습니다.");
			location.href = "/user/mypage/userUpdateForm.do";
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