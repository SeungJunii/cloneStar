package com.jun.clonestar.domains.feed.service;

import com.jun.clonestar.config.database.dao.ICommonDao;
import com.jun.clonestar.domains.feed.DTO.entity.ReplyEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ReplyService {
    @Autowired
    private ICommonDao commonDao;

    @Transactional
    public void register(ReplyEntity replyEntity) {
        commonDao.insertData("Reply.insert", replyEntity);
    }
}
