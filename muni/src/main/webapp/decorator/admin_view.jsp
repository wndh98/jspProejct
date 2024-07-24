<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="deco"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/admin.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<deco:head></deco:head>
</head>

<body>

	<jsp:include page="admin_head.jsp"></jsp:include>
	<deco:body></deco:body>
	<footer style="height:250px;background-color:#e1e1e1;margin-top:50px;"></footer>
</body>
</html>