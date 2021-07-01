package com.jun.clonestar.domains.feed.service;


import com.jun.clonestar.config.database.dao.ICommonDao;
import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import com.jun.clonestar.domains.feed.DTO.entity.ReplyEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class FeedService {
    @Autowired
    private ICommonDao commonDao;



    @Transactional
    public void register(FeedEntity feedEntity) {
        commonDao.insertData("Feed.insert", feedEntity);
    }


    public List<FeedEntity> feedList (Model model) {
        return commonDao.getList("Feed.feedList", model);

    }
    public List<FeedEntity> getFeedByAccount (String account) {
        return commonDao.getList("Feed.getFeedByAccount", account);

    }

    public List<FeedEntity> feedHasReply (Model model) {
        return commonDao.getList("Feed.feedHasReply", model);

    }
    public List<ReplyEntity> getReplyList (Integer feedId) {
        return commonDao.getList("Feed.getReplyList", feedId);

    }

}

