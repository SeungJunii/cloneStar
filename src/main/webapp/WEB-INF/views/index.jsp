<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-21
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="login-squre">
    <div class="login-container">
        <img src="imgs/loginLogo.png" class="login-logo"/>
        <form action="loginProc" method="post" class="login-form">
            <input type="text" name="username" placeholder="전화번호, 사용자 이름 또는 이메일" required/>
            <input type="password" name="password" placeholder="비밀번호" required/>
            <input type="submit" value="로그인"/>
        </form>
        <div class="login-divider">또는</div>
        <a href="#" class="login-link">
            <i class="fa fa-money"></i>
            Facebook으로 로그인
        </a>
        <a href="#" class="login__link login__link--small">비밀번호를 잊으셨나요?</a>
    </div>
    <div class="login-join">
        <span>계정이 없으신가요?</span><a href="join.html">가입하기</a>
    </div>
    <div class="login-download">
        <span>앱을 다운로드하세요</span>
        <div class="login-market">
            <img src="imgs/apple.png" class="login-appstore" alt="Apple appstore logo" title="Apple appstore logo"/>
            <img src="/imgs/googleplay.png" class="login-appstore" alt="Android appstore logo"
                 title="Android appstore logo"/>
        </div>
    </div>
</div>
<footer>
    <div>
        <nav>
            <ul>
                <li><a href="#">소개</a></li>
                <li><a href="#">블로그</a></li>
                <li><a href="#">채용 정보</a></li>
                <li><a href="#">도움말</a></li>
                <li><a href="#">Api</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">약관</a></li>
                <li><a href="#">인기 계정</a></li>
                <li><a href="#">해시태그</a></li>
                <li><a href="#">위치</a></li>
            </ul>
            <select>

            </select>
        </nav>
    </div>
    <div>
        &copy; 2021 clonestar from jun
    </div>
</footer>
</body>
</html>
