package com.ict.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class ChatController {
	
	@GetMapping("/chatting")
	public String chat(String userId, String room_id, HttpServletRequest request, HttpServletResponse reponse,Model model, HttpSession session)throws Exception {
		
		session.getAttribute(userId);

		// 세션이 비었을 땐 로그인 페이지로
		if(userId == null) {
			return "/customLogin";
		}
		
		// user정보
		Map<String, Object> infos = new HashMap<String,Object>();
		infos.put("userId", userId);
		
		model.addAttribute("infos",infos);
		model.addAttribute("room_id", userId);
		model.addAttribute("room_id", room_id);
		System.out.println("??:" + userId);
		
		log.info("room_id 조회 : " + room_id);
		
		
		
		return "/chat";
	}

}
