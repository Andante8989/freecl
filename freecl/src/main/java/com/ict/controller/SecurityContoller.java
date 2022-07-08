package com.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="secu")
public class SecurityContoller {
	
	@GetMapping("/admin")
	public void admin() {
		
	}

}
