<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${result > 0}">
		<script type="text/javascript">
			alert("게시글이 작성 되었습니다");
			location.href = "catelist.do?pcName=${pcName}";
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("작성 실패하였습니다")
			history.back();
		</script>
	</c:if>
</body>
</html>