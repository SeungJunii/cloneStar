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
      <img src="/images/avatar.jpg" id="profile_image" style="cursor:pointer" />
    </div>
    <div class="profile__info">
      <div class="profile__title">
        <h1>${principal.userEntity.nickName}</h1>
        <a href="/edit">
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
  <div class="profile__photo-grid">
    <div class="profile__photo-row">
      <div class="profile__photo">
        <a href="#">
          <img src="/images/feedPhoto.jpg">
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
      <div class="profile__photo">
        <a href="#">
          <img src="/images/feedPhoto.jpg">
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
      <div class="profile__photo">
        <a href="#">
          <img src="/images/feedPhoto.jpg">
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
    </div>
  </div>
</main>

<%@ include file="../includes/footer.jsp" %>