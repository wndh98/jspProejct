<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>

<body>
	<div class="row mb-3">
		<div class="col-md-2 themed-grid-col"></div>
		<div class="col-md-8 themed-grid-col">
			<div class="board_container">
				<div class="board_content">
					<form action="/admin/user/userUpdate.do" method="post" onsubmit="return chkFrm();" name="frm">
						<input type="hidden" name="curPage" value="${curPage }">
						<input type="hidden" name="coNumChk" value="0"> <input type="hidden" name="userSnsAgree" value="${userSnsAgree }"> <input type="hidden" name="userEmailAgree" value="${userEmailAgree }">
						<div class="memberForm">
							<div class="boardTitle">
								<h3>회원인증</h3>
							</div>
							<table class="boardForm">
								<colgroup>
									<col style="width: 190px;">
									<col style="width: auto;">
								</colgroup>
								<tr>
									<th><img src="/images/ico_required.svg"> 회원구분</th>
									<td>
										<input type="radio" name="userType" value="1" checked> <label>개인회원</label> <input type="radio" name="userType" value="2"> <label>사업자회원회원</label>
									</td>
								</tr>
								<tr class="type2 type3">
									<th><img src="/images/ico_required.svg"> 사업자구분</th>
									<td>
										<input type="radio" name="userType2" value="2" checked> <label>개인사업자</label> <input type="radio" name="userType2" value="3"> <label>법인사업자</label>
									</td>
								</tr>
								<tr class="type3">
									<th><img src="/images/ico_required.svg"> 회원인증</th>
									<td>
										법인명<br> <input type="text" name="userName" style="margin-top: 5px;" id="name2" required class="co"><br> 법인번호<br> <input type="number" name="userCoNum1" id="userCoNum1" style="margin-top: 5px; width: 30%" required class="co"> - <input type="number" name="userCoNum2" id="userCoNum2" style="margin-top: 5px; width: 30%" required class="co">
										<button class="btn_white search_btn" onclick="coNumChk()">중복확인</button>
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
									<td>
										<input type="text" name="userId" maxlength="16" minlength="4" required="required" pattern="^[a-z0-9]+" title="영문 소문자/숫자 4~16자로 입력해주세요." readonly value="${user.userId }"> <span>(영문 소문자/숫자, 4~16자)</span>
									</td>
								</tr>
								<tr>
									<th><img src="/images/ico_required.svg"> 비밀번호</th>
									<td>
										<input type="password" name="userPassword" maxlength="16" minlength="4" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{10,16}" title="영문 대소문자, 숫자, 특수문자 중 2가지 이상의 조합, 10~16자 길이로 입력해주세요."> <span>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
									</td>
								</tr>
								
								<tr class="type1">
									<th><img src="/images/ico_required.svg"> 이름</th>
									<td>
										<input type="text" name="userName" required id="name1" value="${user.userName}">
									</td>
								</tr>
								<tr class="type2">
									<th><img src="/images/ico_required.svg"> 상호명</th>
									<td>
										<input type="text" name="userComName" required class="bu" value="${user.userComName }">
									</td>
								</tr>
								<tr class="type2 type3">
									<th><img src="/images/ico_required.svg"> 사업자번호</th>
									<td>
										<input type="text" name="userComNum" required class="bu co" value="${user.userComNum }">
									</td>
								</tr>
								<tr>
									<th>주소</th>
									<td>
										<input type="text" style="width: 30%" name="userAddressNum" readonly id="addr1" value="${user.userAddressNum }">
										<button type="button" class="btn_white search_btn" onclick="sample2_execDaumPostcode()" >주소검색</button><br>
										<input type="text" name="userAddress" readonly id="addr2" value="${user.userAddress }" style="width:80%"> 
										<input type="text" name="userAddressEtc" id="addr3" value="${user.userAddressEtc }" style="width:80%">
									</td>
								</tr>
								<tr>
									<th>일반전화</th>
									<td>
										<select name="userTel1" style="width: 30%">
										</select>
										- <input type="number" name="userTel2" style="width: 30%"> - <input type="number" name="userTel3" style="width: 30%">
									</td>
								</tr>
								<c:set var="phoneList">
									010,011,016,017,018,019
								</c:set>
								<c:set var="userPhone" value="${user.userPhone.split('-') }"/>
								<tr>
									<th><img src="/images/ico_required.svg">휴대전화${user.userPhone }</th>
									<td>
										<select name="userPhone1" style="width: 30%">
											<c:forEach items="${phoneList }" var="phone">
												<option value="${phone }"  <c:if test="${userPhone[0] eq phone}">selected</c:if>> ${phone }</option>
											</c:forEach>
										</select>
										- <input type="number" name="userPhone2" style="width: 30%" required value="${userPhone[1] }"> - <input type="number" name="userPhone3" style="width: 30%" required value="${userPhone[2] }">
									</td>
								</tr>
								<tr>
									<th><img src="/images/ico_required.svg">이메일</th>
									<td>
										<input type="text" name="userEmail" required value="${user.userEmail }">
									</td>
								</tr>
							</table>
							<div class="boardTitle">
								<h3>
									추가정보 <span>(선택)</span>
								</h3>
							</div>
							<table class="boardForm">
								<colgroup>
									<col style="width: 190px;">
									<col style="width: auto;">
								</colgroup>
								<tr>
									<th>생년월일</th>
									<td>
										<input type="text" style="width: 25%" name="userBirthday1" value="${userBirthday1}">년 
										<input type="text" style="width: 25%" name="userBirthday2" value="${userBirthday2}">월 
										<input type="text" style="width: 25%" name="userBirthday3" value="${userBirthday3}">일 <br> 
										<input type="radio" name="userSolar" value="1" <c:if test="${user.userSolar==1 }">checked</c:if>)><label>양력</label> 
										<input type="radio" name="userSolar" value="0" <c:if test="${user.userSolar==0 }">checked</c:if>><label>음력</label>
									</td>
								</tr>
								<tr>
									<th>추천인 아이디</th>
									<td>
										<input type="text" name="userRecommend" value="${user.userRecommend }">
									</td>
								</tr>
							</table>
						</div>
						<div class="btn_menu">
							<button class="btnBold_w" type="button" onclick="location.href='/admin/user/userList.do?curPage=${curPage}'" >취소</button>
							<button class="btnBold" type="submit">수정</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<div id="layer" style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/js/daumMap.js"></script>
	<script src="/js/user/joinForm.js"></script>
</body>

</html>