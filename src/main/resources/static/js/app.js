$(document).ready(function () {
    var $heart = $(".heart"),
        $cog = $(".fa-cog"),
        $icog = $(".img-cog"),
        $overlay = $(".profile__overlay "),
        $imgoverlay = $(".profileImg__overlay "),
        $closeBtn = $(".fa-times"),
        $cancelBtn = $("#cancel"),
        $icloseBtn = $(".fa-times"),
        $icancelBtn = $("#icancel"),
        $logoutBtn = $("#logout");
    $heart.click(function () {
        $(this).toggleClass("heart-clicked fa-heart fa-heart-o");
    });

    $cog.click(function () {
        $overlay.fadeIn();
    });
    $icog.click(function () {
        $imgoverlay.fadeIn();
    });

    $closeBtn.click(closePopup);
    $cancelBtn.click(closePopup);

    function closePopup() {
        $overlay.fadeOut();
    }
    $icloseBtn.click(iclosePopup);
    $icancelBtn.click(iclosePopup);

    function iclosePopup() {
        $imgoverlay.fadeOut();
    }

    $logoutBtn.click(function () {
        closePopup();
        window.location = "index.html";
    });
});
