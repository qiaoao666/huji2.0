package com.hj.user.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;
import com.hj.user.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/user1")
public class UserAction {
	private UserService userService = new UserServiceImpl();
	@RequestMapping("/addUser")
	public String addUser(){
		UserInfo userInfo = new UserInfo();
		userInfo.setUserId("3");
		userInfo.setUserName("432");
		userInfo.setUserPass("42432");
		userService.addUser(userInfo);
		return "/user/MyJsp";
	}
	
	
}
