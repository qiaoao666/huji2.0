package com.hj.user.action;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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
	public String getMain(@ModelAttribute UserInfo user) throws UnsupportedEncodingException{
		if(user != null){
			String userName = user.getUserName();
			//userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			String userPass = user.getUserPass();
			System.out.println(userName);
			if(userService.loginCheck(userName, userPass)){
				return "success";
			}
		}
		return URLEncoder.encode("用户名或密码错误", "UTF-8");
	}

	
	
}
