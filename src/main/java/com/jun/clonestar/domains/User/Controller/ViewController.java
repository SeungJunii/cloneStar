package com.jun.clonestar.domains.User.Controller;


import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {

    @Autowired
    private UserService userService;

    @GetMapping({"/", "", "/feed"})
    public String feed() {

        return "/feed/feed";
    }


    @GetMapping({"/user/login"})
    public String login() {

        return "user/login";
    }

    @GetMapping("/user/join")
    public String joinForm() {

        return "user/join";
    }

    @GetMapping("/profile")
    public String profile() {

        return "user/profile";
    }

    @GetMapping("/edit")
    public String edit() {

        return "user/edit";
    }

    /*@GetMapping("/messages/inbox")
    public ModelAndView currentUser(@AuthenticationPrincipal UserEntity userEntity) {
        String username = userEntity.getAccount(); // .. find messages for this user and return them ... }
        return currentUser(userEntity);
        }*/

    @GetMapping("/test")
    public String test() {

        return "/test";
    }
}
