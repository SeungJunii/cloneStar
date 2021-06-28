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
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <sec:authorize access="isAuthenticated()">
        <sec:authentication property="principal" var="principal"/>
    </sec:authorize>
</head>
<body>
<h1>${principal.userEntity.id}, ${principal.userEntity.userAccount}, ${principal.userEntity.realName}, ${principal.userEntity.password}  </h1>


</body>
</html>
