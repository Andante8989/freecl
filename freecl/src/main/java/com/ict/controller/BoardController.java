package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ict.persistent.NoticeVO;
import com.ict.service.NoticeService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	private NoticeService service;
	

	@GetMapping(value="/detail")
	public String getProductDetail() {
		return "/productDetail";
	}
	
	@GetMapping(value="/customerCenter")
	public String customerCenter() {
		
		return "/board/customerCenter";
	}
	
	@GetMapping(value="/notice")
	public String notice(Model model) {
		List<NoticeVO> noticeList = service.getList();
		model.addAttribute("noticeList", noticeList);
		return "/board/notice";
	}
	
	@GetMapping(value="noticeDetail")
	public String noticeDetail(Long nt_num, Model model) {
		NoticeVO notice = service.getListDetail(nt_num);
		model.addAttribute("notice", notice);
		return "/board/noticeDetail";
	}
	
}
