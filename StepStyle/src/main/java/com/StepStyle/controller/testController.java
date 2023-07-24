package com.StepStyle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.StepStyle.vo.testVO;



@Controller
public class testController {
	
	@Autowired
	private com.StepStyle.service.testService testService;
	
	@RequestMapping(value="/test.do")
	public String test(int noticeNo,Model model) {
		
		//1.화면에서 넘어오는 bidx 추출
		
		//2.추출한 bidx를 이용하여 일치하는 데이터 조회
		testVO vo = testService.selectOneBynoticeNo(noticeNo);
		
		//3.2번 데이터를 화면으로 전달 
		model.addAttribute("vo", vo);
		
		return "views/test";
	}
	
	
	
	
	
	
	
	
	
	
	
}