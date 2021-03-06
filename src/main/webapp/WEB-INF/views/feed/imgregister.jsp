<%--
  Created by IntelliJ IDEA.
  User: kms
  Date: 2021-06-28
  Time: 오전 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../includes/header.jsp" %>
<body>
<main class="uploadContainer">
  <!--사진업로드 박스-->
  <section class="upload">

    <!--사진업로드 로고-->
    <div class="upload-top">
      <a href="home.html" class="">
        <img src="/images/loginLogo.jpg" alt="">
      </a>
      <p>사진 업로드</p>
    </div>
    <!--사진업로드 로고 end-->

    <!--사진업로드 Form-->
    <form class="upload-form" method="POST" enctype="multipart/form-data" action="/api/register">
      <input type="file" name="file"  accept="image/*" id="input_img" />

      <div class="upload-img">
        <img src="/images/exam.jpg" alt="" id="img_preview" />
      </div>

      <!--사진설명 + 업로드버튼-->
      <div class="upload-form-detail">
        <input name="account" type="email" value="${principal.userEntity.userAccount}" hidden>
        <input name="nickName" type="text" value="${principal.userEntity.nickName}" hidden>
        <input name="realName" type="text" value="${principal.userEntity.realName}" hidden>
        <input type="text" placeholder="현재 위치" name="location">
        <input type="text" placeholder="사진설명" name="caption">
        <input type="text" placeholder="#태그" name="tag">
        <button class="cta blue">업로드</button>
      </div>
      <!--사진설명end-->

    </form>
    <!--사진업로드 Form-->
  </section>
  <!--사진업로드 박스 end-->
</main>


<script>
  $("#input_img").on("change", (e) => {
    let files = e.target.files;
    let filesArr = Array.prototype.slice.call(files);
    filesArr.forEach((f)=>{
      if(!f.type.match("image.*")){
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