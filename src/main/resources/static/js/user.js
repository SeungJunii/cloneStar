let index = {
    init: function () {
        $("#btn-join").on("click", () => {
            this.save();
        });
        /*$("#btn-login").on("click", () => {
            this.login();
        });*/
        $("#btn-update").on("click", () => {
            this.update();
        });
    },

    save: function () {
        let data = {
            userAccount: $("#userAccount").val(),
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
    update: function () {
        //alert('user의 save함수 호출됨');
        let data = {
            id: $("#id").val(),
            realName: $("#realName").val(),
            nickName: $("#nickName").val(),
            website: $("#website").val(),
            bio: $("#bio").val(),
            userAccount: $("#userAccount").val(),
            phone : $("#phone").val(),
            gender : $("#gender").val()
        };

        $.ajax({
            type: "post",
            url: "/api/editProc",
            data: JSON.stringify(data), // http body데이터
            contentType: "application/json; charset=utf-8",// body데이터가 어떤 타입인지(MIME)
            dataType: "text" // 요청을 서버로해서 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면) => javascript오브젝트로 변경
        }).done(function (resp) {
            alert("회원수정이 완료되었습니다.");
            //console.log(resp);
            location.href = "/user/profile";
        }).fail(function (error) {
            console.log(JSON.stringify(error));
        });

    },


}
index.init()