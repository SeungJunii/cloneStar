<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-24
  Time: 오후 2:22
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../includes/header.jsp" %>
<main id="feed">
  <div class="photo u-default-box">
    <header class="photo__header">
      <img src="/images/avatar.jpg" />
      <span class="photo__username">aaaa</span>
    </header>
    <img src="/images/feedPhoto.jpg" />
    <div class="photo__info">
      <div class="photo__actions">
            <span class="photo__action">
              <i class="fa fa-heart-o heart"></i>
            </span>
        <span class="photo__action">
              <i class="fa fa-comment-o"></i>
            </span>
      </div>
      <span class="photo__likes">5,103 likes</span>
      <ul class="photo__comments">
        <li class="photo__comment">
          <span class="photo__comment-author">serranoarevalo</span> 좋아요
        </li>
        <li class="photo__comment">
          <span class="photo__comment-author">serranoarevalo</span> 싫어요
        </li>
      </ul>
      <span class="photo__date">1시간 전</span>
      <div class="photo__add-comment-container">
        <textarea placeholder="댓글을 ...."></textarea>
        <i class="fa fa-ellipsis-h"></i>
      </div>
    </div>
  </div>
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