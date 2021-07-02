package com.jun.clonestar.domains.follow.controller;

import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import com.jun.clonestar.domains.follow.DTO.entity.FollowEntity;
import com.jun.clonestar.domains.follow.service.FollowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.io.IOException;

@Controller
public class FollowController {
    @Autowired
    private FollowService followService;

    @Autowired
    private UserService userService;



    @PostMapping("/follow")
    public RedirectView inFollow(Integer activeId, Integer passiveId, FollowEntity followEntity) throws IOException {
        followEntity.setActiveId(activeId);
        followEntity.setPassiveId(passiveId);
        followService.iFollow(followEntity);
        UserEntity userEntity =  userService.selectById((passiveId));
        String account= userEntity.getUserAccount();
        return new RedirectView("/user/profile/"+account);
    }
    /*@PostMapping("/follow")
    public RedirectView unFollow(Integer activeId,Integer passiveId, FollowEntity followEntity) throws IOException {
        followEntity.setActiveId(activeId);
        followEntity.setPassiveId(passiveId);
        followService.unFollow(followEntity);
        return new RedirectView("/");
    }*/
}
