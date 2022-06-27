package com.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/intro")
public class IntroController {
	
	@GetMapping(value="/use")
	public String use() {
		return "/intro/use";
	}
	
	@GetMapping(value="/privacy")
	public String privacy() {
		return "/intro/privacy";
	}
}
