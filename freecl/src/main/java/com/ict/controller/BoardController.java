package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ict.persistent.CustomerVO;
import com.ict.service.CustomerService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	private CustomerService service;

	@GetMapping(value="/detail")
	public String getProductDetail() {
		return "/productDetail";
	}
	
	@GetMapping(value="/customerCenter")
	public String customerCenter(Model model) {
		List<CustomerVO> customerList = service.getList();
		model.addAttribute("customerList", customerList);
		return "/board/customerCenter";
	}
}
