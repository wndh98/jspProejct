<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:if test="${userId eq null }">
	<script>
		alert("잘못된 접근입니다.");
		location.href="/";
	</script>
</c:if>
</head>
<body>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("상품 사용후기가 수정되었습니다");
			location.href = "/board/reviewList.do"
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("상품 사용후기 수정에 실패했습니다");
			location.href = history.back();
		</script>
	</c:if>
</body>
</html>