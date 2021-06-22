package com.jun.clonestar.domains.User.DTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class User {
    private int id;
    private String account;
    private String realName;
    private String nickName;
    private String password;
}
