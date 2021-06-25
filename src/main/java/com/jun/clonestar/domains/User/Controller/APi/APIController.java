package com.jun.clonestar.domains.User.Controller.APi;

import com.jun.clonestar.config.database.dao.CommonDao;
import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import org.apache.catalina.Authenticator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

/*@Controller
public class APIController {
    @Autowired
    private UserService userService;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private CommonDao commonDao;

    @PostMapping("/editProc")
    public String updateUser(UserEntity userEntity){
        userService.updateUser(userEntity);
        *//*Authentication authentication= authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(userEntity.getUserAccount() ,userEntity.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);*//*
        return "/feed/feed";
    }
}*/
