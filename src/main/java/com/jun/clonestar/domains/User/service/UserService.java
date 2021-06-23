package com.jun.clonestar.domains.User.service;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {


    @Autowired
    CommonDao commonDao;

    public void join(UserEntity userEntity) {
        commonDao.insertData("User.insert", userEntity);
    }

    public void login(UserEntity userEntity) {
        commonDao.insertData("User.login", userEntity);
    }


}
