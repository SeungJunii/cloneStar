package com.jun.clonestar.domains.feed.controller;

import com.jun.clonestar.domains.feed.DTO.entity.ReplyEntity;
import com.jun.clonestar.domains.feed.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReplyController {
    @Autowired
    private ReplyService replyService;

    @PostMapping("/api/reply")
    public void register(@RequestBody ReplyEntity replyEntity) throws Exception {
       replyService.register(replyEntity);
    }

}
