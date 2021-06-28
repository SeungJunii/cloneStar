package com.jun.clonestar.domains.feed.DTO.entity;

import com.jun.clonestar.domains.User.DTO.role.RoleType;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class FeedEntity {


    private Integer id;
    private String account;//계정명
    private String realName;// 성명
    private String nickName;// 사용자 이름
    private String picture;
    private String caption;
    private String location;
    private String tag;
    private int likeNum;
    private String profileImgUrl;
    private Date time;



    @Builder
    public FeedEntity(Integer id, String account, String realName, String nickName, String picture,String caption, String location, String tag,int likeNum,  String profileImgUrl ){
        this.id = id;
        this.account = account;
        this.realName = realName;
        this.nickName = nickName;
        this.picture = picture;
        this.caption = caption;
        this.location = location;
        this.tag = tag;
        this.likeNum = likeNum;
        this.profileImgUrl = profileImgUrl;
    }
}
