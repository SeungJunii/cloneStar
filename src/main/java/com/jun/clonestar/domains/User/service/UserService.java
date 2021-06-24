package com.jun.clonestar.domains.User.service;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class UserService {


    @Autowired
    private CommonDao commonDao;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Transactional
    public void join(UserEntity userEntity) {
        String rowpwd = userEntity.getPassword();
        userEntity.setPassword(passwordEncoder.encode(rowpwd));
        commonDao.insertData("User.insert", userEntity);
        System.out.println("password : " +userEntity.getPassword());
    }

    /*public void login(UserEntity userEntity) {
        commonDao.insertData("User.login", userEntity);
    }*/


}
