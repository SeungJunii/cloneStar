<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-24
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<sec:authorize access="isAuthenticated()">
  <sec:authentication property="principal" var="principal"/>
</sec:authorize>


<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Feed | clonestar</title>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        rel="stylesheet">
  <link rel="shortcut icon" href="/images/favicon.ico">
  <link rel="stylesheet" href="/css/styles.css">
  <link rel="stylesheet" href="/css/modal.css">
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<nav class="navigation">
  <a href="/feed">
    <img src="/images/logo.png" />
  </a>
  <input type="text" placeholder="Search">
  <div class="navigation__links">
    <a href="/feed/explore" class="navigation__link">
      <i class="fa fa-compass"></i>
    </a>
    <a href="#" class="navigation__link follow_popup">
      <i class="fa fa-heart-o"></i>
    </a>
    <a href="/user/profile/${principal.userEntity.userAccount}" class="navigation__link">
      <i class="fa fa-user-o"></i>
    </a>
  </div>
</nav>
