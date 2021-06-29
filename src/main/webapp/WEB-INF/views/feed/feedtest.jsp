<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-29
  Time: 오전 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../includes/header.jsp" %>
<table border="1">
  <tr>
    <th>위치</th>
    <th>작성자</th>
    <th>태그</th>
    <th>작성시간</th>
  </tr>
  <c:forEach items="${feedList}" var="feed">
    <tr>
      <td>${feed.location}</td>
      <td>${feed.nickName}</td>
      <td>${feed.tag}</td>
    </tr>
  </c:forEach>
</table>



<%@ include file="../includes/footer.jsp" %>
