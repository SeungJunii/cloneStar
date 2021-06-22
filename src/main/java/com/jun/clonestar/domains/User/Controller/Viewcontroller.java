package com.jun.clonestar.domains.User.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Viewcontroller {

    @GetMapping({"","/"})
    public String home(){

        return "index";
    }

    @GetMapping("/user/join")
    public String join(){

        return "user/join";
    }

    @GetMapping("/user/login")
    public String login(){

        return "user/login";
    }
}
