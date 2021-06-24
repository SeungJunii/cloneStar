package com.jun.clonestar.auth;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserDetailService implements UserDetailsService {

    private UserEntity userEntity;

    @Autowired
    private CommonDao commonDao;

    @Override
    public UserDetails loadUserByUsername(String account) throws UsernameNotFoundException {
        UserEntity principal = null;

        if(commonDao.getData("User.existAccount",account)){
            principal=commonDao.getData("User.selectAccount",account);
            System.out.println(principal.getPassword());
        }
        return new UserDetail(principal);
    }
}
