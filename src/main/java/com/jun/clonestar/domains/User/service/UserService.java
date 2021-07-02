package com.jun.clonestar.domains.User.service;

import com.jun.clonestar.config.database.dao.ICommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.DTO.role.RoleType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class UserService {


    @Autowired
    private ICommonDao commonDao;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Transactional
    public void join(UserEntity userEntity) {
        String rowpwd = userEntity.getPassword();
        userEntity.setPassword(passwordEncoder.encode(rowpwd));
        userEntity.setRole(RoleType.USER);
        commonDao.insertData("User.insert", userEntity);
        System.out.println("password : " +userEntity.getPassword());

    }


    public void updateUser(UserEntity userEntity){
        commonDao.updateData("User.updateUser", userEntity);
    }


    public void updateUserImg(UserEntity userEntity){
        commonDao.updateData("User.updateUserImg", userEntity);
    }


    public UserEntity information(String account){ return commonDao.getData("User.selectAccount", account);}

    public UserEntity selectById(Integer id){ return commonDao.getData("User.selectId", id);}


    /*public void login(UserEntity userEntity) {
        commonDao.insertData("User.login", userEntity);
    }*/


}
