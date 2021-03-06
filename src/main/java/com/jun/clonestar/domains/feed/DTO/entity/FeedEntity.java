package com.jun.clonestar.domains.feed.DTO.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class FeedEntity {
    private Integer num;
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
    private Integer id;

    private List<ReplyEntity> replyEntities;



    @Builder
    public FeedEntity(Integer num, String account, String realName, String nickName, String picture,String caption, String location, String tag,int likeNum,  String profileImgUrl, Integer id ){
        this.num = num;
        this.account = account;
        this.realName = realName;
        this.nickName = nickName;
        this.picture = picture;
        this.caption = caption;
        this.location = location;
        this.tag = tag;
        this.likeNum = likeNum;
        this.profileImgUrl = profileImgUrl;
        this.id = id;
    }
}
