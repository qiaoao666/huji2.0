package com.hj.user.action;
import java.util.UUID;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hj.user.po.UserInfo;
import com.hj.user.service.UserService;
import com.hj.user.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/login")
public class UserAction {
	private UserService userService = new UserServiceImpl();
	@RequestMapping(value = "/main")
	@ResponseBody
	public String getMain(@ModelAttribute UserInfo user){
		if(user != null){
			String userName = user.getUserName();
			String userPass = user.getUserPass();
			System.out.println(userName);
			if(userService.loginCheck(userName, userPass)){
				return "success";
			}
		}
		return "错误";
	}

	
	
}
