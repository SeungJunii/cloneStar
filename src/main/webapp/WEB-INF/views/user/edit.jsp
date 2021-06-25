<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-24
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../includes/header.jsp"%>
<main id="edit-profile">
  <div class="edit-profile__container u-default-box">

    <header class="edit-profile__header">
      <div class="fucker-container">
        <img src="/images/avatar.jpg" />
      </div>
      <!-- master comments -->
      <h1 class="edit-profile__username">${principal.userEntity.userAccount}</h1>
    </header>

    <form action="/editProc" method="post" class="edit-profile__form" >
      <input type="hidden" id="id" value="${principal.userEntity.id}" />
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="realName">성명</label>
        <input id="realName" type="text" value="${principal.userEntity.realName}">
      </div>
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="nickName">이름</label>
        <input id="nickName" type="text" value="${principal.userEntity.nickName}" readonly="readonly">
      </div>
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="website">사이트</label>
        <input id="website" type="url" value="${principal.userEntity.website}">
      </div>
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="bio">자기소개</label>
        <textarea id="bio" rows="3" >${principal.userEntity.bio}</textarea>
      </div>
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="userAccount">Email</label>
        <input id="userAccount" type="email" value="${principal.userEntity.userAccount}">
      </div>
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="phone">전화번호</label>
        <input id="phone" type="text" value="${principal.userEntity.phone}">
      </div>
      <div class="edit-profile__row">
        <label class="edit-profile__label" for="gender">성별</label>
        <select  id="gender">
          <option value="read" selected>${principal.userEntity.gender}</option>
          <option value="male">Male</option>
          <option value="female">Female</option>
          <option value="cant-remember" >Can't remember</option>
        </select>
      </div>
      <div class="edit-profile__row">
        <span></span>
      </div>
    </form>
    <button id="btn-update" value="수정">수정</button>
  </div>
</main>


<%@include file="../includes/footer.jsp"%>
