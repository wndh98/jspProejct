<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/user/user.css">
<c:if test="${userId!=null }">
	<script>
		alert("잘못된 접근입니다.");
		location.href="/";
	</script>
</c:if>
</head>

<body>
	<div id="container">
		<div class="breadcrumbs">
			<ul>
				<li><a href="#none">홈</a></li>
				<li><a href="#none">회원가입</a></li>
			</ul>
		</div>
		<div class="middle_container">
			<div class="title_section">
				<h1>회원가입</h1>
				<ul class="step">
					<li class="selected">1. 약관동의</li>
					<li>2. 정보입력</li>
					<li>3. 가입완료</li>
				</ul>
			</div>
			<form action="/user/joinForm.do" method="post" name="frm"
				onsubmit="return checkAgree();">
				<div class="agree_all">
					<h3>전체동의</h3>
					<div>
						<input type="checkbox" id="check1"> <label for="check1"
							class="agree_all_label">모든 약관을 확인하고 전체 동의합니다.</label>
					</div>
				</div>
				<div class="agreeInner">
					<div class="agree_block">
						<input type="checkbox" id="check2" name="rAgree" value="1">
						<label for="check2" class="agree_all_label">모든 약관을 확인하고 전체
							동의합니다.</label>
						<div class="contents">
							<p>내용입니다내용입니다</p>
						</div>
					</div>
					<div class="agree_block">
						<input type="checkbox" id="check3" name="rAgree" value="1">
						<label for="check3" class="agree_all_label">모든 약관을 확인하고 전체
							동의합니다.</label>
						<div class="contents">
							<p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다ㄴ내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다.
							</p>
						</div>
					</div>
					<div class="agree_block">
						<input type="checkbox" id="check4" name="rAgree" value="1">
						<label for="check4" class="agree_all_label">모든 약관을 확인하고 전체
							동의합니다.</label>
						<div class="contents">
							<p>내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다ㄴ내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다내용입니다.
							</p>
						</div>
					</div>
					<div class="agree_block">
						<div>
							<input type="checkbox" id="check5" name="emailAgree" value="1">
							<label for="check5" class="agree_all_label">모든 약관을 확인하고
								전체 동의합니다.</label>
						</div>
						<div>
							<input type="checkbox" id="check6" name="snsAgree" value="1">
							<label for="check6" class="agree_all_label">모든 약관을 확인하고
								전체 동의합니다.</label>
						</div>
						<div class="contents">
							<p>내용입니다</p>
						</div>
					</div>
				</div>
				<div class="btn_menu">
					<button type="button" class="btnBold_w">취소</button>
					<button class="btnBold">다음</button>
				</div>
			</form>
		</div>

	</div>
	<script src="/js/user/joinAgree.js"></script>
</body>

</html>