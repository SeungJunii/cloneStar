package com.jun.clonestar.domains.feed.Controller;

import com.jun.clonestar.domains.feed.DTO.entity.FeedEntity;
import com.jun.clonestar.domains.feed.service.FeedSerivice;
import com.jun.clonestar.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class FeedController {
    @Autowired
    private FeedSerivice feedSerivice;


    @PostMapping("/api/register")
    public String register(FeedEntity feedEntity , @RequestParam("file") MultipartFile multipartFile ) throws IOException{
        String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        feedEntity.setPicture(filename);

        feedSerivice.register(feedEntity);

        String uploadDir = "feed-picture/" + feedEntity.getId();
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
    public String feedList(Model model) throws Exception {
        List<FeedEntity> feedList = feedSerivice.feedList(model);
        model.addAttribute("feedList",feedList);
        return "feed/feed";
    }



        
}
