package com.jun.clonestar.domains.User.DTO;

import lombok.Data;

@Data
public class User {
    private int id;
    private String account;
    private String realName;
    private String nickName;
    private String password;
}
