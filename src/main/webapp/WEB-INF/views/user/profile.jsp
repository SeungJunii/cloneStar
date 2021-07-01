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
        <c:choose>
            <c:when test="${info.userAccount==principal.userEntity.userAccount}">
                <div class="profile__container img-cog">
                    <a href="#">
                        <img src="/profile-picture/${info.id}/${info.profileImgUrl}" id="profile_image"/>
                    </a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="profile__container">
                    <img src="/profile-picture/${info.id}/${info.profileImgUrl}"/>
                </div>
            </c:otherwise>
        </c:choose>
        <div class="profile__info">
            <div class="profile__title">

                <h1>${info.nickName}</h1>
                <c:if test="${info.userAccount==principal.userEntity.userAccount}">
                    <a href="/user/edit">
                        <button>Edit Profile</button>
                    </a>
                    <i class="fa fa-cog fa-lg"></i>
                </c:if>
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
                <span class="profile__fullname">${info.realName}</span>
                ${info.bio}
                <a href="#" class="profile__link">${info.website}</a>
            </p>
        </div>
    </header>
    <c:if test="${info.userAccount==principal.userEntity.userAccount}">
        <a href="/feed/imgregister">
            <button>피드 등록하기</button>
        </a>
    </c:if>
    <div class="profile__photo-grid">
        <c:forEach items="${getFeedByAccount}" var="feed" varStatus="status" step="1" begin="0">
            <div class="profile__photo ${status.index %3 + 1}">
                <a href="#">
                    <img src="/feed-picture/${feed.num}/${feed.picture}"/>
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
<div class="profileImg__overlay">
    <i class="fa fa-times"></i>
    <div class="profileImg__overlay-container">
        <form class="upload-form" method="POST" enctype="multipart/form-data" action="/editProImg">
            <input type="file" name="file" accept="image/*" id="input_img"/>
            <div class="upload-img">
                <img src="/images/exam.jpg" alt="" id="img_preview"/>
            </div>
            <input type="hidden" name="id" value="${principal.userEntity.id}"/>
            <input name="userAccount" type="email" value="${principal.userEntity.userAccount}" hidden>
            <button class="profile__overlay-link">프로필 사진 업로드</button>
        </form>
        <a href="#" class="profile__overlay-link" id="icancel">Cancel</a>
    </div>
</div>

<script>
    $("#input_img").on("change", (e) => {
        let files = e.target.files;
        let filesArr = Array.prototype.slice.call(files);
        filesArr.forEach((f) => {
            if (!f.type.match("image.*")) {
                alert("이미지를 등록해야 합니다.");
                return;
            }

            let reader = new FileReader();
            console.log(reader);
            reader.onload = (e) => {
                console.log(e.target);
                $("#img_preview").attr("src", e.target.result);
            }
            reader.readAsDataURL(f); // 이 코드 실행시 reader.onload 실행됨.
        });
    });
</script>


<%@ include file="../includes/footer.jsp" %>