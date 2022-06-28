package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
		return "board/productDetail";
	}
	
	@GetMapping(value="/customerCenter")
	public String customerCenter() {
		
		return "/board/customerCenter";
	}
	//////////////////////// 공지사항 게시판 관련 컨트롤러 /////////////////////////////////
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
	
	@GetMapping(value="noticeInsertForm")
	public String noticeInsertForm() {
		return "/board/noticeInsertForm";
	}
	
	@PostMapping(value="noticeInsert")
	public String noticeInsert(NoticeVO notice) {
		service.noticeInsert(notice);
		return "redirect:/board/notice";
	}
	
	@PostMapping(value="noticeDelete")
	public String noticeDelete(Long nt_num) {
		service.noticeDelete(nt_num);
		return "redirect:/board/notice";
	}
	
	@PostMapping(value="noticeUpdateForm")
	public String noticeUpdateForm(Long nt_num, Model model) {
		NoticeVO notice = service.getListDetail(nt_num);
		model.addAttribute("notice", notice);
		return "/board/noticeUpdateForm";
	}
	
	@PostMapping(value="noticeUpdate")
	public String noticeUpdate(NoticeVO notice) {
		service.noticeUpdate(notice);
		return "redirect:/board/noticeDetail?nt_num=" + notice.getNt_num();
	}
	/////////////////////////////////////////////////////////////////////////////////
}
