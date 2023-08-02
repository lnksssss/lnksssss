package com.StepStyle.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    
    @RequestMapping(value = "/write.do", method = RequestMethod.GET)
    public String showWriteForm(Model model) {
        // 글 작성 폼을 보여주기 위해 빈 BoardVO 객체를 Model에 추가
        model.addAttribute("board", new BoardVO());
        return "board/write"; // 글 작성 폼 페이지로 이동
    }
    
    
    @RequestMapping(value = "/write.do", method = RequestMethod.POST)
    public String writeBoard(@ModelAttribute BoardVO board) {
    	 // 글 작성 시간을 현재 시간으로 설정
        board.setWdate(new Date());
        // 글 작성을 위한 서비스 메서드를 호출하여 데이터베이스에 글 저장하기
        boardService.writeBoard(board);
        return "redirect:/board/community.do"; // 글 작성 후, 목록 페이지로 리다이렉트
    }
    
    
    @RequestMapping(value = "/delete.do", method = RequestMethod.POST)
    public String delete(@RequestParam("bidx") int bidx, Model model) {
        int result = boardService.deleteBoard(bidx);

        if (result > 0) {
            // 삭제 성공 시 메시지를 모델에 추가하여 화면에 보여줌
            model.addAttribute("message", "삭제되었습니다.");
        } else {
            // 삭제 실패 시 메시지를 모델에 추가하여 화면에 보여줌
            model.addAttribute("message", "삭제되지 않았습니다.");
        }

        // 삭제 후 커뮤니티 페이지로 리다이렉트
        return "redirect:/board/community.do";
    }

}
