package com.jun.clonestar.domains.User.controller;

import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private AuthenticationManager authenticationManager;
    

    @PostMapping("/api/join")
    public void join(@RequestBody UserEntity userEntity){
        userService.join(userEntity);
    }

    /*@PostMapping("/api/login")
//    public ResponseDto<Integer> login(@RequestBody User user, HttpSession session){
    public void login(@RequestBody UserEntity userEntity){
        System.out.println("로그인요청");*/
    @PostMapping("/api/editProc" )
    public void updateUser(@RequestBody UserEntity userEntity) {
        userService.updateUser(userEntity);
        /*Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(userEntity.getUserAccount(),userEntity.getPassword()));
        SecurityContextHolder.getContext().setAuthentication(authentication);*/
    }


        
}
