package com.jun.clonestar.domains.User.Controller;

import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    private UserService userService;
    
    

    @PostMapping("/api/join")
    public void join(@RequestBody UserEntity userEntity){
        userService.join(userEntity);
    }

    /*@PostMapping("/api/login")
//    public ResponseDto<Integer> login(@RequestBody User user, HttpSession session){
    public void login(@RequestBody UserEntity userEntity){
        System.out.println("로그인요청");*/
       

        
    }
