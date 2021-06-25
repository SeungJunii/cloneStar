package com.jun.clonestar.domains.User.service;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.DTO.role.RoleType;
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
        userEntity.setRole(RoleType.USER);
        commonDao.insertData("User.insert", userEntity);
        System.out.println("password : " +userEntity.getPassword());

    }

    @Transactional
    public void updateUser(UserEntity userEntity){
        System.out.println("phone : " +userEntity.getPhone());
        update(userEntity);
        System.out.println("phone : " +userEntity.getPhone());
    }

    @Transactional
    public void update(UserEntity user) {
        commonDao.updateData("User.updateUser", user);
        System.out.println(user.getPhone());
        System.out.println(user.getId());
        System.out.println(user.getUserAccount());
    }

    /*public void login(UserEntity userEntity) {
        commonDao.insertData("User.login", userEntity);
    }*/


}
