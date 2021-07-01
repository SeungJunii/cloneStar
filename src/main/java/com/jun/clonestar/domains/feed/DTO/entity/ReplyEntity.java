package com.jun.clonestar.domains.feed.DTO.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class ReplyEntity {
    private Integer replyId;
    private Integer feedNum;
    private String content;
    private String writer;
    private boolean like;
    private Date createTime;

    @Builder
    public ReplyEntity(Integer replyId, Integer feedNum, String content, String writer, boolean like){
        this.replyId = replyId;
        this.feedNum = feedNum;
        this.content = content;
        this.writer = writer;
        this.like = like;

    }

}

