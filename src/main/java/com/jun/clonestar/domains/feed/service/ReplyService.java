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
public class ReplyService {
    @Autowired
    private ICommonDao commonDao;

    @Transactional
    public void register(ReplyEntity replyEntity) {
        commonDao.insertData("Reply.insert", replyEntity);
    }

    @Transactional
    public List<ReplyEntity> replyAll(Integer feedNum) {
        return commonDao.getList("Reply.selectReply", feedNum);
    }

}
