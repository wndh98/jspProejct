<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:if test="${userId!=null }">
	<script>
		alert("잘못된 접근입니다.");
		location.href="/";
	</script>
</c:if>
</head>
<body>
	<c:if test="${result>0 }">
		<script>
			alert("변경되었습니다.");
			location.href = "/user/loginForm.do";
		</script>
	</c:if>
	<c:if test="${result==0 }">
		<script>
			alert("변경정보가 잘못되었습니다. 다시 시도해주세요.");
			location.href = "/user/userPwSearchForm.do";
		</script>
	</c:if>
</body>
</html>