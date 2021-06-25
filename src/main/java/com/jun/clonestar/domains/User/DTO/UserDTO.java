package com.jun.clonestar.domains.User.DTO;

import com.jun.clonestar.domains.User.DTO.role.RoleType;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UserDTO {
    private Integer id;//계정 번호 PK
    private String account;//계정명
    private String realName;// 성명
    private String nickName;// 사용자 이름
    private String password;
    private String phone;
    private String gender;
    private String bio; //자기소개
    private String website;

    private String profileImgUrl;

    private RoleType role;

    @Builder
    public UserDTO(Integer id, String account, String realName, String nickName, String password, String phone , String gender, String bio, String website, String profileImgUrl ){
        this.id = id;
        this.account = account;
        this.realName = realName;
        this.nickName = nickName;
        this.password = password;
        this.phone = phone;
        this.gender = gender;
        this.bio = bio;
        this.website = website;
        this.profileImgUrl = profileImgUrl;
    }
}
