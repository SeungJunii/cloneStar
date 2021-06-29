package com.jun.clonestar.domains.feed.mapper;

import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;

import java.util.List;

public interface FeedMapper {
    public List<FeedEntity> feedList() throws Exception;

}
