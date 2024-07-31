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

	<c:if test="${ result > 0}">

		<script type="text/javascript">
			alert("삭제되었습니다");
			location.href = "/admin/product/pcList.do";
		</script>
	</c:if>

	<c:if test="${result == 0}">
		<script type="text/javascript">
			alert("하위 카테고리가 존재합니다.삭제후 다시 시도해주세요.");
			history.go(-1);
		</script>
	</c:if>
	<c:if test="${result < 0}">
		<script type="text/javascript">
			alert("해당카테고릴 참조하는 상품이 존재합니다. 변경후 다시 시도해주세요.");
			history.back();
		</script>
	</c:if>
</body>
</html>