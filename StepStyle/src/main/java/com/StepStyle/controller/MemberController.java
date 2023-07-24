package com.StepStyle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping(value="/loginAction.do")
	public String loginAction()
	{
		
		
		return "index";
	}

	@RequestMapping(value="/joinAction.do")
		public String joinAction()
		{
			return "index";
		}
	
	
	
	
	
}

