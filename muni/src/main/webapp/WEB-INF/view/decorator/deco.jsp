<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="deco"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylehseet" href="css/font/monstserrat.css">
<link rel="stylehseet" href="/css/font/nanum_gothic.css">
<link rel="stylehseet" href="/css/font/open_sans.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<deco:head></deco:head>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<deco:body></deco:body>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>