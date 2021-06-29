<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-24
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../includes/header.jsp" %>

<main id="profile">
    <header class="profile__header">
        <div class="avatar__container">
            <form id="frm_profile_img" action="/user/profileUpload" method="post">
                <input type="file" name="profileImage" style="display: none;"/>
            </form>
            <img src="/images/avatar.jpg" id="profile_image" style="cursor:pointer"/>
        </div>
        <div class="profile__info">
            <div class="profile__title">
                <h1>${principal.userEntity.nickName}</h1>
                <a href="/user/edit">
                    <button>Edit Profile</button>
                </a>
                <i class="fa fa-cog fa-lg"></i>
            </div>
            <ul class="profile__stats">
                <li class="profile__stat">
                    <span class="profile__stat-number">313</span> posts
                </li>
                <li class="profile__stat">
                    <span class="profile__stat-number">4,444</span> followers
                </li>
                <li class="profile__stat">
                    <span class="profile__stat-number">44</span> following
                </li>
            </ul>
            <p class="profile__bio">
                <span class="profile__fullname">${principal.userEntity.realName}</span>
                ${principal.userEntity.bio}
                <a href="#" class="profile__link">${principal.userEntity.website}</a>
            </p>
        </div>
    </header>
    <a href="/feed/imgregister">
        <button>이미지 등록하기</button>
    </a>
    <div class="profile__photo-grid">
        <c:forEach items="${getFeedByAccount}" var="feed" varStatus="status" step="1" begin="0">
            <div class="profile__photo ${status.index %3 + 1}">
                <a href="#">
                    <img src="/feed-picture/${feed.id}/${feed.picture}"/>
                    <div class="profile__photo-overlay">
                  <span class="profile__photo-stat">
                    <i class="fa fa-heart"></i> 504
                  </span>
                        <span class="profile__photo-stat">
                    <i class="fa fa-comment"></i> 22
                  </span>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
</main>

<div class="profile__overlay">
    <i class="fa fa-times"></i>
    <div class="profile__overlay-container">
        <a href="#" class="profile__overlay-link">Change password</a>
        <a href="#" class="profile__overlay-link">Authorize Apps</a>
        <a href="#" class="profile__overlay-link">Notifications</a>
        <a href="/logout" class="profile__overlay-link" id="logout">Log Out</a>
        <a href="#" class="profile__overlay-link" id="cancel">Cancel</a>
    </div>
</div>



<%@ include file="../includes/footer.jsp" %>