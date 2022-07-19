package com.ict.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.persistent.AuthVO;
import com.ict.persistent.UserVO;
import com.ict.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CommonController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private PasswordEncoder pwen;
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		
		log.info("접근 거부 : " + auth);
		
		model.addAttribute("errorMassage", "접근 거부");
	}
	
	@GetMapping("/customLogin")
	public void loginInput (String error, String logout, Model model) {
		log.info("/error 여부 : " + error);
		log.info("logout 여부 : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "로그인 관련 에러입니다. 계정확인을 다시해주세요");
		}
		if(logout != null) {
			model.addAttribute("logout", "로그아웃을 했습니다.");
		}
	}
	
	@GetMapping("/customLogout")
	public void logoutGet() {
		log.info("로그아웃 폼으로 이동");
	}
	
	@PostMapping("/customLogout")
	public void logoutPost() {
		log.info("포스트방식으로 로그아웃 처리");
	}
	
	
	@GetMapping("/join")
	public void insertUser() {
		
	}
	
	@PostMapping("/join")
	public String insertUser(UserVO vo, String[] role) {
		String beforeCrPw = vo.getUpw();
		vo.setUpw(pwen.encode(beforeCrPw));
		vo.setAuthList(new ArrayList<AuthVO>());
		
		for(String roleItem : role) {
			AuthVO authVO = new AuthVO();
			authVO.setAuth(roleItem);
			authVO.setUserId(vo.getUserId());
			vo.getAuthList().add(authVO);
		}
		
		service.insertUser(vo);
		return "/main";
	}
	
	@ResponseBody
	@PostMapping("/joinIdCheck")
	public String idCheck(@RequestParam("id")String id) {
		log.info("아이디 체크 진입");
		int check = service.idCheck(id);
		log.info("처리결과 : " + check);
		String che = Integer.toString(check);
		return che;
	}
	
	@GetMapping("/idPwSearch")
	public void idPwSearch() {
		
	}
	
	@GetMapping("/myPage")
	public void myPage() {
		
	}
	
	@PostMapping("/userUpdateForm")
	public void userUpdateForm() {

	}
	
	@PostMapping("/userUpdate")
	public String userUpdate(UserVO vo) {
		service.updateUser(vo);
		return "/customLogout";
	}
	
	@GetMapping("/pay")
	public void pay() {
		log.info("pay 컨트롤러 진입");
	}


	

	
	
	
	
	
	
	
	
}	
