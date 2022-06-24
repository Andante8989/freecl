package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/board")
public class BoardController {
	

	@GetMapping(value="/detail")
	public String getProductDetail() {
		return "/productDetail";
	}
	
	@GetMapping(value="/customerCenter")
	public String customerCenter() {
		
		return "/board/customerCenter";
	}
	
}
