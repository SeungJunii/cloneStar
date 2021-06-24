<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-23
  Time: 오전 9:27
  To change this template use File | Settings | File Templates.
--%>
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
        <img src="/images/phoneImage.png" />
    </div>
    <div class="login__column">
        <div class="login__box">
            <img src="/images/loginLogo.png" />
            <form action="/api/login" method="post" class="login__form">
                <input type="text" name="account" id="account" placeholder="전화번호, 사용자 이름 또는 이메일" required/>
                <input type="password" name="password" id="password" placeholder="비밀번호" required/>
                <button type="submit" value="로그인">로그인</button>
            </form>

            <span class="login__divider">
           또는
        </span>
            <a href="http://facebook.com" class="login__fb-link"><i class="fa fa-facebook-square"></i> Facebook으로 로그인</a>
            <a href="#" class="login__small-link">비밀번호를 잊으셨나요?</a>
        </div>
        <div class="login__box">
        <span class="login__text">
          계정이 없으신가요?<br />
        </span>
            <a class="login__blue-link" href="/user/join">가입하기</a>
        </div>
        <div class="login__t-box">
        <span class="login__text">
          앱을 다운로드하세요
        </span>
            <div class="login__appstores">
                <img src="/images/ios.png" class="login__appstore" />
                <img src="/images/android.png" class="login__appstore" />
            </div>
        </div>
    </div>
</main>
<%@ include file="../includes/footer.jsp" %>

