<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-24
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../includes/header.jsp" %>

<script>
    function onReplyAddClick(obj) {
        const form = $(obj).prev();
        let data = {
            feedNum: form.find(".feedNum").val(),
            writer: $(".writer").val(),
            content: form.find(".content").val(),
        }
        $.ajax({
            type: 'post',
            url: '/api/reply',
            data: JSON.stringify(data),
            contentType: 'application/json; utf-8',
            dataTypes: 'json'
        })
            .done(function () {
                alert("댓글등록완료");
                location.href = '/';
            })
            .fail(function () {
                alert("댓글등록실패")
            })
    }
</script>
<main id="feed">
    <c:forEach items="${feedList}" var="feed">
        <div class="photo u-default-box">
            <header class="photo__header">
                <img src="/profile-picture/${feed.id}/${feed.profileImgUrl}"/>
                <div class="photo__username">
                    <a href="user/profile/${feed.account}">
                        <span class="photo__author">${feed.nickName}</span>
                    </a>
                    <span class="photo__location">${feed.location}</span>
                </div>
            </header>
            <img src="/feed-picture/${feed.num}/${feed.picture}"/>
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
                    <c:forEach items="${feed.replyEntities}" var="reply">
                        <li class="photo__comment">
                            <span class="photo__comment-author">${reply.writer}</span> ${reply.content}
                        </li>
                    </c:forEach>
                </ul>
                <span class="photo__date">${feed.time}</span>
                <div class="photo__add-comment-container">
                    <form class="cmform">
                        <input class="feedNum" type="text" value="${feed.num}" hidden>
                        <input class="writer" type="text" value="${principal.userEntity.nickName}" hidden>
                        <textarea class="content" placeholder="댓글을 ...."></textarea>
                    </form>
                    <button value="등록" onclick="onReplyAddClick(this)">등록</button>
                </div>
            </div>
        </div>
    </c:forEach>
</main>


<!-- Modal 시작 -->
<div id="modal">
    <div id="follow_popup_list">

        <div class="follow_popup_item">
            <img src="/images/avatar.jpg" alt="사진">
            <p><a href="#">준</a></p>
            <button class="following_btn">팔로잉</button>
        </div>

        <div class="follow_popup_item">
            <img src="/images/avatar.jpg" alt="코스사진">
            <p><a href="#">준</a></p>
            <button class="follower_btn">팔로워</button>
        </div>

        <div class="follow_popup_close">
            <button type="button">닫기</button>
        </div>
    </div>

</div>
<!-- Modal 끝 -->

<%@ include file="../includes/footer.jsp" %>