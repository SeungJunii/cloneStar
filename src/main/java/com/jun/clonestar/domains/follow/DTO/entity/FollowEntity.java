package com.jun.clonestar.domains.follow.DTO.entity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class FollowEntity {
    private Integer fnum;
    private Integer activeId;
    private Integer passiveId;
    private Date regDate;

    private String activeUser;
    private String passiveUser;

    @Builder
    public FollowEntity( Integer fnum, Integer activeId, Integer passiveId, String activeUser, String passiveUser  ){
        this.fnum = fnum;
        this.activeId = activeId;
        this.passiveId = passiveId;
        this.activeUser = activeUser;
        this.passiveUser = passiveUser;
    }
}

