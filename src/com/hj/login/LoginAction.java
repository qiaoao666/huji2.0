package com.hj.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hj.user.dao.UserDao;
import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;
import com.hj.user.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/login")
public class LoginAction {
	private UserService userService = new UserServiceImpl();
	@RequestMapping("/main")
	public String getMain(@ModelAttribute UserInfo user){
		if(userService.addUser(user)){
			UserDao u = new UserDao();
			u.addUser(user);
		}
		return "/jsp/main";
	}

}
