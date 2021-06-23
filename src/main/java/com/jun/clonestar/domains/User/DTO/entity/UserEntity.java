package com.jun.clonestar.domains.User.DTO.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
public class UserEntity {
    private Integer id;
    private String account;
    private String realName;
    private String nickName;
    private String password;
    private LocalDate createDate;

    @Builder
    public UserEntity(String account, String realName, String nickName, String password ){
        this.account = account;
        this.realName = realName;
        this.nickName = nickName;
        this.password = password;
    }
}
