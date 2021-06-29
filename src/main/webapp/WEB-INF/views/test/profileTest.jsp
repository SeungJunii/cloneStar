<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-29
  Time: 오후 12:29
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
    ${UserEntity.id}
    <c:forEach items="${getFeedByAccount}" var="feed">

        <div class="photo u-default-box">
            <header class="photo__header">
                <img src="/images/avatar.jpg"/>
                <div class="photo__username">
                    <span class="photo__author">${feed.nickName}</span>
                    <span class="photo__location">${feed.location}</span>
                </div>
            </header>


            <img src="/feed-picture/${feed.id}/${feed.picture}"/>
            <div class="photo__info">
                <div class="photo__actions">
            <span class="photo__action">
              <i class="fa fa-heart-o heart"></i>
            </span>
                    <span class="photo__action">
              <i class="fa fa-comment-o"></i>
            </span>
                </div>
                <span class="photo__likes">1 likes</span>
                <ul class="photo__comments">
                    <li class="photo__comment">
                        <span class="photo__comment-author">ㅇㅇㅇ</span> 좋아요
                    </li>
                    <li class="photo__comment">
                        <span class="photo__comment-author">ㅁㅁㅁ</span> 싫어요
                    </li>
                </ul>
                <span class="photo__date">${feed.time}</span>
                <div class="photo__add-comment-container">
                    <textarea placeholder="댓글을 ...."></textarea>
                    <i class="fa fa-ellipsis-h"></i>
                </div>
            </div>
        </div>
    </c:forEach>
</main>

<%@ include file="../includes/footer.jsp" %>
