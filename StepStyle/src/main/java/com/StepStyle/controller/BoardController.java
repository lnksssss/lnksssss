package com.StepStyle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/board")
@Controller
public class BoardController {

	
	@RequestMapping(value="/community.do")
	public String community()
	{
		return "board/community";
	}
	
}