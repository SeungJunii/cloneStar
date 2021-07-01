package com.jun.clonestar.domains.feed.service;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.config.database.dao.ICommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import com.jun.clonestar.domains.feed.mapper.FeedMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class FeedSerivice {
    @Autowired
    private ICommonDao commonDao;


    private FeedMapper feedMapper;

    @Transactional
    public void register(FeedEntity feedEntity) {
        commonDao.insertData("Feed.insert", feedEntity);
    }


    @Transactional
    public List<FeedEntity> feedList (Model model) {
      return commonDao.getList("Feed.feedList", model);

    }
    @Transactional
    public List<FeedEntity> getFeedByAccount (String account) {
        return commonDao.getList("Feed.getFeedByAccount", account);

    }

}
