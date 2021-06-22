package com.jun.clonestar.domains.User.Controller;

import com.jun.clonestar.domains.User.DTO.User;
import com.jun.clonestar.domains.User.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class UserController {
    @Autowired
    private UserMapper userMapper;

    @PostMapping("/join")
    public int join(@RequestBody User user){
        return userMapper.join(user);
    }

    @PostMapping("/login")
    public String login(@RequestBody User user){
        System.out.println(login(user));
        return userMapper.login(user);
    }
}
