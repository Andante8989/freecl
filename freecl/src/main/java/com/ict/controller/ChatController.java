package com.ict.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ict.persistent.ChatVO;
import com.ict.service.ChatService;

import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class ChatController {
	
	@Autowired
	private ChatService service;
	
	
	@GetMapping("/chatting")
	public String chat(String userId, String room_id, HttpServletRequest request, HttpServletResponse reponse,Model model, HttpSession session)throws Exception {
		
		// 세션이 비었을 땐 로그인 페이지로
		if(userId == null) {
			return "/customLogin";
		}
		
		System.out.println("컨트롤러 room_id : " + room_id);
		model.addAttribute("userId",userId);
		
		model.addAttribute("room_id", userId);
		
		model.addAttribute("room_id", room_id);
		
		return "/chat";
	}
	
	@GetMapping("/chatlist")
	public String chatlist(String userId, String room_id, HttpServletRequest request, HttpServletResponse reponse,Model model, HttpSession session)throws Exception {
		// 세션이 비었을 땐 로그인 페이지로
		if(userId == null) {
			return "/customLogin";
		}
				
		ChatVO vo = new ChatVO();
		
		vo.setRoomname(room_id);
		
		service.insertRoom(vo);
		log.info(vo);
		
		
		model.addAttribute("userId",userId);
		
		model.addAttribute("room_id", userId);
		
		model.addAttribute("room_id", room_id);
		
		return "/chatlist";
	}
	
	@GetMapping("/chatcreate")
	public String chatcreate(String userId, String room_id, HttpServletRequest request, HttpServletResponse reponse,Model model, HttpSession session)throws Exception {
		// 세션이 비었을 땐 로그인 페이지로
		if(userId == null) {
			return "/customLogin";
		}
				
		model.addAttribute("userId",userId);
		
		model.addAttribute("room_id", userId);
		
		model.addAttribute("room_id", room_id);
		
		return "/chatcreate";
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "/admin";
	}
	
}
