package com.jun.clonestar.domains.feed.Controller;

import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import com.jun.clonestar.domains.feed.DTO.entity.ReplyEntity;
import com.jun.clonestar.domains.feed.service.FeedSerivice;
import com.jun.clonestar.domains.feed.service.ReplyService;
import com.jun.clonestar.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
public class ReplyController {
    @Autowired
    private ReplyService replyService;

    @PostMapping("/api/reply")
    public void register(@RequestBody ReplyEntity replyEntity) throws Exception {
        System.out.println(replyEntity.getFeedNum());
       replyService.register(replyEntity);
    }

}
