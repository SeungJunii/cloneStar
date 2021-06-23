<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login | clonestar</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          rel="stylesheet">
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
<main id="login">
    <div class="login__column">
        <img src="/images/phoneImage.png"/>
    </div>
    <div class="login__column">
        <div class="login__box">
            <img src="/images/loginLogo.png"/>
            <form class="login__form">
                <input type="text" name="account" id="account" placeholder="전화번호, 사용자 이름 또는 이메일" required/>
                <input type="password" name="password" id="password" placeholder="비밀번호" required/>
            </form>
            <button id="btn-join" value="로그인">로그인</button>
            <span class="login__divider">
           또는
        </span>
            <a href="http://facebook.com" class="login__fb-link"><i class="fa fa-facebook-square"></i> Facebook으로
                로그인</a>
            <a href="#" class="login__small-link">비밀번호를 잊으셨나요?</a>
        </div>
        <div class="login__box">
        <span class="login__text">
          계정이 없으신가요?<br/>
        </span>
            <a class="login__blue-link" href="/userDTO/join">가입하기</a>
        </div>
        <div class="login__t-box">
        <span class="login__text">
          앱을 다운로드하세요
        </span>
            <div class="login__appstores">
                <img src="/images/ios.png" class="login__appstore"/>
                <img src="/images/android.png" class="login__appstore"/>
            </div>
        </div>
    </div>
</main>
<footer>
    <nav class="footer__nav">
        <ul class="footer__list">
            <li class="footer__item"><a href="#" class="footer__link">소개</a></li>
            <li class="footer__item"><a href="#" class="footer__link">블로그</a></li>
            <li class="footer__item"><a href="#" class="footer__link">채용 정보</a></li>
            <li class="footer__item"><a href="#" class="footer__link">도움말</a></li>
            <li class="footer__item"><a href="#" class="footer__link">Api</a></li>
            <li class="footer__item"><a href="#" class="footer__link">개인정보처리방침</a></li>
            <li class="footer__item"><a href="#" class="footer__link">약관</a></li>
            <li class="footer__item"><a href="#" class="footer__link">인기 계정</a></li>
            <li class="footer__item"><a href="#" class="footer__link">해쉬태그</a></li>
            <li class="footer__item"><a href="#" class="footer__link">위치</a></li>
        </ul>
    </nav>
    <span class="footer__copyright">&copy; 2021 clonestar from jun</span>
</footer>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/js/app.js"></script>
<script src="/js/userDTO.js"></script>
</body>
</html>
