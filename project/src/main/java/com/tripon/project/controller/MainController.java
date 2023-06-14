package com.tripon.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/main")
    public String mainPage() {
        return "main"; // main.jsp 파일의 이름
    }
}
