package com.ict.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ict.persistent.UserVO;
import com.ict.service.UserService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ChatController {
	
	@PostMapping("/chatting")
	public String chat(String userId,HttpServletRequest request, HttpServletResponse reponse,Model model, HttpSession session)throws Exception {
		
		session.getAttribute(userId);
		System.out.println("userId : " + userId);
		// 세션이 비었을 땐 로그인 페이지로
		if(userId == null) {
			return "/customLogin";
		}
		
		// user정보
		Map<String, Object> infos = new HashMap<String,Object>();
		infos.put("userId", userId);
		System.out.println("infos.put : " + userId);
		model.addAttribute("infos",infos);
		
		
		return "/chat";
	}

}
