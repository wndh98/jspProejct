<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/admin.css">
</head>


<body>
    <div id="wrap">
        <div id="container">
            <div class="small_container">
                <h1 class="title1">로그인</h1>
                <form action="/admin/loginAction.do" method="post">
                    <div class="login_form">
                        <input type="text" placeholder="아이디" required name="userId">
                        <input type="password" placeholder="비밀번호" required name="userPassword">
                        <input type="submit" class="btnBold" value="로그인">
                    </div>
                </form>
            </div>
        </div>
        <footer id="footer">

        </footer>
    </div>
</body>

</html>