package com.hj.huji.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String addHuji(@ModelAttribute HujiInfo huji,Model model){
		model.addAttribute("huji", huji);
		hujiService.addHuji(huji);
		return "redirect:/huji/query";
	}
	@RequestMapping("/query")
	public String queryHuji(@ModelAttribute HujiInfo huji,Model model){
		List<HujiInfo> list = hujiService.getAllHujiInfo();
		model.addAttribute("hujiList", list);
		return "/jsp/right/hujiManage";
	}
	@RequestMapping("/drop")
	public String dropHuji(String id,Model model){
		hujiService.deleteHuji(id);
		//System.out.println("删除！");
		List<HujiInfo> list = hujiService.getAllHujiInfo();
		model.addAttribute("hujiList", list);
		return "/jsp/right/hujiManage";
	}
}
