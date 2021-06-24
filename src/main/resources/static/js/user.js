let index = {
    init: function () {
        $("#btn-join").on("click", () => {
            this.save();
        });
        /*$("#btn-login").on("click", () => {
            this.login();
        });*/
    },

    save: function () {
        let data = {
            account: $("#account").val(),
            realName: $("#realName").val(),
            nickName: $("#nickName").val(),
            password: $("#password").val()
        }
        $.ajax({
            type: 'post',
            url: '/api/join',
            data: JSON.stringify(data),
            contentType: 'application/json; utf-8',
            dataTypes: 'json'
        })
            .done(function () {
                alert("회원가입완료");
                location.href= '/';
            })
            .fail(function () {
                alert("회원가입실패")

            })

    },
    /*login: function () {
        let data = {
            username: $("#username").val(),
            password: $("#password").val()
        }


        $.ajax({
            type: "post",
            url: "/api/user/login",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(function () {
            alert("로그인이 완료되었습니다");
            location.href = "/";
        }).fail(function (error) {
            alert("로그인이 실패되었습니다");
        });

    }*/


}
index.init()