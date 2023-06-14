package com.tripon.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tripon.project.dto.BoardDTO;
import com.tripon.project.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	@Qualifier("boardServiceImpl")
	BoardService service;

	@GetMapping("/")
	public String mainpage() {
		return "main";
	}
	@GetMapping("/board/write-post")
	public String writepost() {
		return "board/write-post";
	}
	@PostMapping("/board/write-post")
	public ModelAndView writepost(BoardDTO dto) {
		int insertcount = service.writeBoard(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("insertcount", insertcount);
		mv.setViewName("board/post-detail");
		return mv;
	}
	
	@RequestMapping("/board/{boardType}")
    public ModelAndView board(@PathVariable String boardType, @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
        int totalBoard = service.getTotalBoard();
        int limitcount = 10;
        int limitindex = (page - 1) * limitcount;
        int limit[] = new int[2];
        limit[0] = limitindex;
        limit[1] = limitcount;

        List<BoardDTO> list = service.freeboard(limit);

        ModelAndView mv = new ModelAndView();
        mv.addObject("totalBoard", totalBoard);
        mv.addObject("board", list);
        mv.setViewName("board/" + boardType);
        return mv;
    }
	
	
	
//글상세
	@RequestMapping("/board/post-detail")
	public ModelAndView postdetail(@RequestParam(value="post_id", required=false) int post_id) {
		ModelAndView mv = new ModelAndView();
		BoardDTO dto = service.updateViewcountAndGetDetail(post_id);
		mv.addObject("detaildto", dto);
		mv.setViewName("board/post-detail");
		return mv;
	}
}
