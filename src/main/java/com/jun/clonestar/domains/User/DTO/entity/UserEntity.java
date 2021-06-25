package com.jun.clonestar.domains.User.DTO.entity;

import com.jun.clonestar.domains.User.DTO.role.RoleType;
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
    private String userAccount;
    private String realName;// 성명
    private String nickName;// 사용자 이름
    private String password;

    private String phone;
    private String gender;
    private String bio; //자기소개
    private String website;

    private String profileImgUrl;

    private RoleType role;

    private LocalDate createDate;

    @Builder
    public UserEntity(String userAccount, String realName, String nickName, String password, String phone , String gender, String bio, String website, String profileImgUrl, RoleType role ){
        this.userAccount = userAccount;
        this.realName = realName;
        this.nickName = nickName;
        this.password = password;

        this.phone = phone;
        this.gender = gender;
        this.bio = bio;
        this.website = website;

        this.profileImgUrl = profileImgUrl;
        this.role=role;

    }
}
