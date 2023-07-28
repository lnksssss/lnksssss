package com.StepStyle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.StepStyle.service.BoardService;
import com.StepStyle.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService boardService;

    @RequestMapping("/community.do")
    public String community(Model model) {
        List<BoardVO> community = boardService.getBoardList();
        model.addAttribute("community", community);
        return "board/community";
    }
    
    @RequestMapping("/view.do")
    public String viewBoard(@RequestParam("bidx") int bidx, Model model) {
        BoardVO board = boardService.getBoardById(bidx);
        model.addAttribute("board", board);
        return "board/view";
    }
    
    @RequestMapping("/shoesPage.do")
    public String shoesPage() {
    	return "board/shoesPage";
    }
    
    @RequestMapping("/shoesDetaPage.do")
    public String shoesDetaPage() {
    	return "board/shoesDetaPage";
    }
    
    @RequestMapping(value="/write.do")
	public String write()
	{
		return "board/write";
	}

}
