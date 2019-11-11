package com.hj.user.action;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

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
	public String getMain(@ModelAttribute UserInfo user,HttpSession session) throws UnsupportedEncodingException{
		if(user != null){
			String userName = user.getUserName();
			//userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");
			String userPass = user.getUserPass();
			//System.out.println(userName);
			session.setAttribute("user", user);
			if(userService.loginCheck(userName, userPass)){
				//model.addAttribute("userName", userName);
				return "http://localhost:8080/huji2.0/jsp/main.jsp";
			}
		}
		return URLEncoder.encode("用户名或密码错误", "UTF-8");
	}

	
	
}
