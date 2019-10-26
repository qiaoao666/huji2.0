package com.hj.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginAction {
	@RequestMapping("/main")
	public String getMain(){
		return "/main";
	}
	
}
