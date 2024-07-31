<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result>0 }">
		<script>
			location.href = "/admin/user/userList.do";
		</script>
	</c:if>
	<c:if test="${result==0 }">
		<script>
			alert("비밀번호가 일치하지 않습니다.");
			location.href = "/admin/loginForm.do";
		</script>
	</c:if>
	<c:if test="${result<0 }">
		<script>
			alert("회원정보가 존재하지 않습니다.");
			location.href = "/admin/loginForm.do";
		</script>
	</c:if>
</body>
</html>