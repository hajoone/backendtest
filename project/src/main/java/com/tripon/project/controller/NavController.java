package com.tripon.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavController {
	
    @RequestMapping("/local-information-board")
    public String worldPage() {
        return "local-information-board"; 
    }
    
    @RequestMapping("/local-gyotong-board")
    public String gyotongPage() {
        return "local-gyotong-board"; 
    }

    @RequestMapping("/local-friends-board")
    public String friendsPage() {
        return "local-friends-board"; 
    }
    @RequestMapping("/local-review-board")
    public String reviewPage() {
        return "local-review-board"; 
    }
    
    @RequestMapping("/world-information-board")
    public String worldInfoPage() {
        return "world-information-board"; 
    }
    
    @RequestMapping("/world-gyotong-board")
    public String worldGyotongPage() {
        return "world-gyotong-board"; 
    }

    @RequestMapping("/world-friends-board")
    public String worldFriendsPage() {
        return "world-friends-board"; 
    }
    @RequestMapping("/world-review-board")
    public String worldReviewPage() {
        return "world-review-board"; 
    }
    @RequestMapping("/free-board")
    public String freeBoardPage() {
        return "free-board"; 
    }
    @RequestMapping("/qna-board")
    public String qnaBoardPage() {
        return "qna-board"; 
    }
    @RequestMapping("/notice-board")
    public String noticeBoardPage() {
        return "notice-board"; 
    }
    @RequestMapping("/support-board")
    public String supportBoardPage() {
        return "support-board"; 
    }
    @RequestMapping("/login")
    public String loginPage() {
        return "login"; 
    }
    @RequestMapping("/join")
    public String joinPage() {
        return "join"; 
    }
}