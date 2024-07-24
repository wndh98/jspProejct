<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>

<title>Document</title>
</head>

<body>
	<div class="row mb-3">
		<div class="col-md-2 themed-grid-col"></div>
		<div class="col-md-8 themed-grid-col">
			<div class="board_container">
				<div class="board_content">

					<form>
						<div class="boardTitle">
							<h3>구분</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th><img src="/images/ico_required.svg"> 회원구분</th>
								<td><input type="radio" name="radio1" value="1" checked>
									<label>개인회원</label> <input type="radio" name="radio1" value="2">
									<label>사업자회원회원</label></td>
							</tr>
							<tr class="type2 type3">
								<th><img src="/images/ico_required.svg"> 사업자구분</th>
								<td><input type="radio" name="radio2" value="2" checked>
									<label>개인사업자</label> <input type="radio" name="radio2"
									value="3"> <label>법인사업자</label></td>
							</tr>
							<tr class="type3">
								<th><img src="/images/ico_required.svg"> 회원인증</th>
								<td>법인명<br> <input type="text"
									style="margin-top: 5px;"><br> 법인번호<br> <input
									type="text" style="margin-top: 5px; width: 30%"> - <input
									type="text" style="margin-top: 5px; width: 30%">
									<button class="btnNormal_w search_btn">중복확인</button>

								</td>
							</tr>
						</table>
						<div class="boardTitle">
							<h3>기본정보</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th><img src="/images/ico_required.svg"> 아이디</th>
								<td><input type="text"> <span>(영문소문자/숫자,
										4~16자)</span></td>
							</tr>
							<tr>
								<th><img src="/images/ico_required.svg"> 비밀번호</th>
								<td><input type="text"> <span>(영문
										대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span></td>
							</tr>
							<tr>
								<th><img src="/images/ico_required.svg"> 비밀번호 확인</th>
								<td><input type="text"></td>
							</tr>
							<tr class="type1">
								<th><img src="/images/ico_required.svg"> 이름</th>
								<td><input type="text"></td>
							</tr>
							<tr class="type2">
								<th><img src="/images/ico_required.svg"> 상호명</th>
								<td><input type="text"></td>
							</tr>
							<tr class="type2 type3">
								<th><img src="/images/ico_required.svg"> 사업자번호</th>
								<td><input type="text"></td>
							</tr>
							<tr>
								<th>주소</th>
								<td><input type="text" style="width: 30%">
									<button type="button" class="btnNormal_w search_btn"
										onclick="sample2_execDaumPostcode()">주소검색</button> <br> <input
									type="text" style="width: 100%"><br> <input
									type="text" style="width: 100%"></td>
							</tr>
							<tr>
								<th>일반전화</th>
								<td><select name="" id="" style="width: 30%">
										<option>02</option>
								</select> - <input type="text" style="width: 30%"> - <input
									type="text" style="width: 30%"></td>
							</tr>
							<tr>
								<th><img src="/images/ico_required.svg">휴대전화</th>
								<td><select name="" id="" style="width: 30%">
										<option>010</option>
								</select> - <input type="text" style="width: 30%"> - <input
									type="text" style="width: 30%"></td>
							</tr>
							<tr>
								<th><img src="/images/ico_required.svg">이메일</th>
								<td><input type="text"></td>
							</tr>
						</table>
						<div class="boardTitle">
							<h3>추가정보</h3>
						</div>
						<table class="boardForm">
							<colgroup>
								<col style="width: 190px;">
								<col style="width: auto;">
							</colgroup>
							<tr>
								<th>생년월일</th>
								<td><input type="text" style="width: 25%">년 <input
									type="text" style="width: 25%">월 <input type="text"
									style="width: 25%">일 <br> <input type="radio"><label>양력</label>
									<input type="radio"><label>음력</label></td>
							</tr>
							<tr>
								<th>추천인 아이디</th>
								<td><input type="text"></td>
							</tr>
						</table>
						<div class="btn_menu">
							<button class="btnBold">삭제</button>
							<button class="btnBold_w">수정하기</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
	<script src="/js/admin/user/user.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/script/daumMap.js"></script>
</body>

</html>