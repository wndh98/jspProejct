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
		<script type="text/javascript">
			alert("수정 완료");
			location.href = "/admin/product/pcList.do"
		</script>
	</c:if>
	<c:if test="${result<=0 }">
		<script type="text/javascript">
			alert("실패 하였습니다");
			history.back();
		</script>
	</c:if>
</body>
</html>