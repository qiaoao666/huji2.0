package com.hj.user.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hj.user.dao.UserDao;
import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;
import com.hj.user.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserAction {

	@RequestMapping("/addUser")
	public String addUser(){
		
		return "/user/MyJsp";
	}
	
	
}
