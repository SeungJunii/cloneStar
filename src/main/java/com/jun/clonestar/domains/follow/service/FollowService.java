package com.jun.clonestar.domains.follow.service;

import com.jun.clonestar.config.database.dao.ICommonDao;
import com.jun.clonestar.domains.follow.DTO.entity.FollowEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FollowService {
    @Autowired
    private ICommonDao commonDao;


    public void iFollow(FollowEntity followEntity) {
        commonDao.insertData("Follow.inFollow", followEntity);
    }


    public void unFollow(FollowEntity followEntity) {
        commonDao.deleteData("Follow.unFollow", followEntity);
    }

    public Integer existFollow(FollowEntity followEntity) {
        return commonDao.getCount("Follow.existFollow", followEntity);
    }
}

