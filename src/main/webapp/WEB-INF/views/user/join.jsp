<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-22
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<div class="login-squre">
    <article class="login-container">
        <img src="../imgs/loginLogo.png" class="login-logo"/>
        <h3>친구들의 사진과 동영상을 보려면 가입하세요</h3>
        <button class="login-link">
            Facebook으로 로그인
        </button>

        <div class="login-divider">또는</div>

        <form>
            <input type="text" name="account" id="account" placeholder="전화번호, 사용자 이름 또는 이메일" required/>
            <input type="text" name="realName" id="realName" placeholder="성명" required/>
            <input type="text" name="nickName" id="nickName" placeholder="사용자 이름" required/>
            <input type="password" name="password" id="password" placeholder="비밀번호" required/>
        </form>
        <button id="btn-login" value="로그인">로그인</button>
        <a href="#">비밀번호를 잊으셨나요?</a>
    </article>
</div>
<div class="login-join">
    <span>계정이 있으신가요?</span>
    <a href="/">로그인</a>
</div>
<div class="login-download">
    <span>앱을 다운로드하세요</span>
    <div class="login-market">
        <img src="../imgs/apple.png" class="login-appstore" alt="Apple appstore logo" title="Apple appstore logo"/>
        <img src="../imgs/googleplay.png" class="login-appstore" alt="Android appstore logo"
             title="Android appstore logo"/>
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
        </nav>
    </div>
    <div>&copy; 2021 clonestar from jun</div>
</footer>
</body>
<script src="/js/user.js"></script>
</html>
