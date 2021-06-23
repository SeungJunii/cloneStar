package com.jun.clonestar.domains.User.Controller;


import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class ViewController {

    @Autowired
    private UserService userService;

    @GetMapping({"","/"})
    public String home(){

        return "user/login";
    }

    @GetMapping("/user/join")
    public String joinForm(){

        return "user/join";
    }




}
