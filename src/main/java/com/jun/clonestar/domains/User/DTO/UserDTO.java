package com.jun.clonestar.domains.User.DTO;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UserDTO {
    private Integer id;
    private String account;
    private String realName;
    private String nickName;
    private String password;

    @Builder
    public UserDTO(Integer id, String account, String realName, String nickName, String password ){
        this.id = id;
        this.account = account;
        this.realName = realName;
        this.nickName = nickName;
        this.password = password;
    }
}
