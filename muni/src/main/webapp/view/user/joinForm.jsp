<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		location.href = "/";
	</script>
</c:if>

<c:if test="${notAgree==1}">
	<script>
		alert("잘못된 접근입니다.");
		location.href = "/user/joinAgree.do";
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
			<form action="/user/joinWrite.do" method="post" onsubmit="return chkFrm();" name="frm">
				<input type="hidden" name="coNumChk" value="0">
				<input type="hidden" name="userSnsAgree" value="${userSnsAgree }">
				<input type="hidden" name="userEmailAgree" value="${userEmailAgree }">
				<div class="memberForm">
					<div class="memberTitle">
						<h3>기본정보</h3>
					</div>
					<table class="memberTable">
						<colgroup>
							<col style="width: 190px;">
							<col style="width: auto;">
						</colgroup>
						<tr>
							<th>
								<img src="/images/ico_required.svg"> 아이디
							</th>
							<td>
								<input type="text" name="userId" maxlength="16" minlength="4" required="required" pattern="^[a-z0-9]+" title="영문 소문자/숫자 4~16자로 입력해주세요.">
								<span>(영문 소문자/숫자, 4~16자)</span>
							</td>
						</tr>
						<tr>
							<th>
								<img src="/images/ico_required.svg"> 비밀번호
							</th>
							<td>
								<input type="password" name="userPassword" maxlength="16" minlength="4" required="required" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{10,16}" title="영문 대소문자, 숫자, 특수문자 중 2가지 이상의 조합, 10~16자 길이로 입력해주세요.">
								<span>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
							</td>
						</tr>
						<tr>
							<th>
								<img src="/images/ico_required.svg"> 비밀번호 확인
							</th>
							<td>
								<input type="text" maxlength="16" minlength="4" required name="passwordChk">
							</td>
						</tr>
						<tr>
							<th>
								<img src="/images/ico_required.svg"> 이름
							</th>
							<td>
								<input type="text" name="userName" required id="name1">
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="text" style="width: 30%" name="userAddressNum" readonly id="addr1">
								<button type="button" class="btn_white search_btn" onclick="sample2_execDaumPostcode()">주소검색</button>
								<input type="text" name="userAddress" readonly id="addr2">
								<input type="text" name="userAddressEtc" id="addr3">
							</td>
						</tr>
						<c:set var="telList">
							02,031,032,033,041,042,043,044,051,052,053,054,055,061,062,063,064,0502,0503,0504,0505,0506,0507,070,010,011,016,017,018,019,0508
						</c:set>
						<tr>
							<th>일반전화</th>
							<td>
								<select name="userTel1" style="width: 30%">
									<c:forEach items="${telList }" var="tel">
										<option value="${tel}" <c:if test="${userTel[0] eq tel}">selected</c:if>>${tel}</option>
									</c:forEach>
								</select> -
								<input type="number" name="userTel2" style="width: 30%">
								-
								<input type="number" name="userTel3" style="width: 30%">
							</td>
						</tr>
						<tr>
							<th>
								<img src="/images/ico_required.svg">휴대전화
							</th>
							<td>
								<select name="userPhone1" style="width: 30%">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> -
								<input type="number" name="userPhone2" style="width: 30%" required>
								-
								<input type="number" name="userPhone3" style="width: 30%" required>
							</td>
						</tr>
						<tr>
							<th>
								<img src="/images/ico_required.svg">이메일
							</th>
							<td>
								<input type="text" name="userEmail" required>
							</td>
						</tr>
					</table>
					<div class="memberTitle">
						<h3>
							추가정보
							<span>(선택)</span>
						</h3>
					</div>
					<table class="memberTable">
						<colgroup>
							<col style="width: 190px;">
							<col style="width: auto;">
						</colgroup>
						<tr>
							<th>생년월일</th>
							<td>
								<input type="text" style="width: 25%" name="userBirthday1">
								년
								<input type="text" style="width: 25%" name="userBirthday2">
								월
								<input type="text" style="width: 25%" name="userBirthday3">
								일 <br>
								<input type="radio" name="userSolar" value="1">
								<label>양력</label>
								<input type="radio" name="userSolar" value="0">
								<label>음력</label>
								<span>**생일쿠폰 발급에 필요한 정보 입니다 (3,000원 생일쿠폰)</span>
							</td>
						</tr>
						<tr>
							<th>추천인 아이디</th>
							<td>
								<input type="text" name="userRecommend">
							</td>
						</tr>
					</table>
				</div>
				<div class="btn_menu">
					<button class="btnBold_w">취소</button>
					<button class="btnBold" type="submit">가입하기</button>
				</div>
			</form>
		</div>
	</div>
	<div id="layer" style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
	<script src="/js/user/joinForm.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/js/daumMap.js"></script>
</body>
</html>