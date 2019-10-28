package com.hj.huji.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hj.huji.po.HujiInfo;
import com.hj.huji.service.HujiService;
@Controller
@RequestMapping("/huji")
public class HujiAction {
	@Autowired
	private HujiService hujiService;
	@RequestMapping("/input")
	public String inputHuji(Model model){
		model.addAttribute("huji", new HujiInfo());
		return "/jsp/right/hujiAdd";
	}
	@RequestMapping("/add")
	@ResponseBody
	public String addHuji(@ModelAttribute HujiInfo huji,Model model){
		model.addAttribute("huji", huji);
		hujiService.addHuji(huji);
		return "http://localhost:8080/huji2.0/jsp/right/welcome.jsp";
	}
}
