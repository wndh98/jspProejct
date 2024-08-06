<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 삭제</h2>
	<form action="productCateDelete.do?" method="post">
		<input type="hidden" name="String" value="${ pcId}">
		<fieldset>
			<legend>아이디 입력</legend>
			<input type="pcId" required="required" autofocus="autofocus"
				name="pcId">
			<p>
				<input type="submit" value="삭제">
		</fieldset>
	</form>
</body>
</html>