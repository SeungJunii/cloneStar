package com.jun.clonestar.domains.feed.service;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FeedSerivice {
    @Autowired
    private CommonDao commonDao;

    @Transactional
    public void register(FeedEntity feedEntity) {
        commonDao.insertData("Feed.insert", feedEntity);
        System.out.println("location : " +feedEntity.getLocation());

    }

    @Transactional(readOnly = true)
    public List<FeedEntity> feedEntityList (FeedEntity feedEntity) {
      return commonDao.getList("Feed.getFeedByAccount", feedEntity );

    }
}
