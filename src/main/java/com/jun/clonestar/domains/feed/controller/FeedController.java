package com.jun.clonestar.domains.feed.controller;

import com.jun.clonestar.domains.User.DTO.entity.UserEntity;
import com.jun.clonestar.domains.User.service.UserService;
import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import com.jun.clonestar.domains.feed.service.FeedService;
import com.jun.clonestar.domains.feed.service.ReplyService;
import com.jun.clonestar.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class FeedController {
    @Autowired
    private FeedService feedService;

    @Autowired
    private UserService userService;

    @Autowired
    private ReplyService replyService;


    @PostMapping("/api/register")
    public String register(FeedEntity feedEntity , @RequestParam("file") MultipartFile multipartFile ) throws IOException{
        String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        feedEntity.setPicture(filename);

        feedService.register(feedEntity);

        String uploadDir = "feed-picture/" + feedEntity.getNum();
        FileUploadUtil.saveFile(uploadDir, filename, multipartFile);
        return "feed/feed";
    }

    /*@GetMapping("/feed/list")
    public void list(FeedEntity feedEntity){
        feedSerivice.feedEntityList(feedEntity);
        System.out.println(feedSerivice.feedEntityList(feedEntity));
    }*/
    /*@GetMapping({"/", "", "/feed"})
    public String feed() {

        return "/feed/feed";
    }*/


    @GetMapping({"/", "", "/feed"})
    public String feedList(Model model, FeedEntity feedEntity) throws Exception {
        List<FeedEntity> feedList = feedService.feedList(model);
        feedList.forEach(feed -> {
            feed.setReplyEntities(feedService.getReplyList(feed.getNum()));
        });
        model.addAttribute("feedList",feedList);
        /*List<ReplyEntity> replyEntityList = replyService.replyAll(10);
        model.addAttribute("replyList",replyEntityList);*/
        return "feed/feed";
    }


    @GetMapping("/user/profile/{account}")
    public String getFeedByAccount(@PathVariable String account , Model model) throws Exception {
        List<FeedEntity> getFeedByAccount = feedService.getFeedByAccount(account);
        model.addAttribute("getFeedByAccount",getFeedByAccount);
        UserEntity info = userService.information(account);
        model.addAttribute("info",info);
        return "user/profile";
    }



        
}
