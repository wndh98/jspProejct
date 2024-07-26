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
	<script type="text/javascript">
const chk=()=>{
	if(frm.password.value!=frm.password2.value){
		alert("암호와 암호확인이 다릅니다");
		frm.password.focus();
		frm.password.value = "";
		frm.password2.value="";
		return false;
	}
}
</script>

	<form action="productCateWrite.do" method="post" name="frm"
		onsubmit="return chk()">
		<input type="hidden" name="result" value="${result}"> <input
			type="hidden" name="ref" value="${ref }"> <input
			type="hidden" name="re_level" value="${re_level }"> <input
			type="hidden" name="re_step" value="${re_step }"> <input
			type="hidden" name="pageNum" value="${pageNum }">
		<table>
			<caption>게시글 작성</caption>
			<c:if test="${result==0 }">
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" required="required"
						autofocus="autofocus"></td>
				</tr>
			</c:if>
			<c:if test="${result!=0 }">
				<tr>
					<th>제목</th>
					<td><input type="text" name="writer" required="required"></td>
				</tr>
			</c:if>
			<!-- 회원 게시판에서 사용안함 시작 수정/권한 제공 -->

			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" required="required"></td>
			</tr>
			<tr>
				<th>암호</th>
				<td><input type="password" name="password" required="required"></td>
			</tr>
			<!-- 회원 게시판에서 사용안함 끝 -->
			<tr>
				<th>내용</th>
				<td><textarea rows="5" cols="40" name="content"
						required="required"></textarea></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="확인"></th>
			</tr>
		</table>
	</form>
</body>
</html>