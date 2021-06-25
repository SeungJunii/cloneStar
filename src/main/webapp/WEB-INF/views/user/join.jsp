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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login | clonestar</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          rel="stylesheet">
    <link rel="shortcut icon" href="/images/favicon.ico">
    <link rel="stylesheet" href="/css/styles.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<main id="login">
    <div class="login__column">
        <img src="/images/phoneImage.png"/>
    </div>
    <div class="login__column">
        <div class="login__box">
            <img src="/images/loginLogo.png"/>

            <span class="login__text">
          친구들의 사진과 동영상을 보려면 가입하세요
        </span>

            <a href="http://facebook.com" class="login__fb-link"><i class="fa fa-facebook-square"></i> Facebook으로
                로그인</a>

            <span class="login__divider">
          또는
        </span>

            <form class="login__form">
                <input type="email" name="userAccount" id="userAccount" placeholder="이메일 주소" required/>
                <input type="text" name="realName" id="realName" placeholder="성명" required/>
                <input type="text" name="nickName" id="nickName" placeholder="사용자 이름" required/>
                <input type="password" name="password" id="password" placeholder="비밀번호" required/>
            </form>
            <button id="btn-join" value="가입">가입</button>
        </div>
        <div class="login__box">

        <span class="login__text">
          계정이 있으신가요? <br/>
        </span>
            <a class="login__blue-link" href="/user/login">로그인</a>
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
<%@ include file="../includes/footer.jsp" %>


