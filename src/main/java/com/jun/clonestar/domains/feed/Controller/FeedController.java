package com.jun.clonestar.domains.feed.Controller;

import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import com.jun.clonestar.domains.feed.service.FeedSerivice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FeedController {
    @Autowired
    private FeedSerivice feedSerivice;

    @PostMapping("/api/register")
    public void register(@RequestBody FeedEntity feedEntity ){
        feedSerivice.register(feedEntity);
    }


        
}
