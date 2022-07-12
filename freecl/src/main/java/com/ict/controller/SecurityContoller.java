package com.ict.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ict.persistent.BoardVO;
import com.ict.persistent.ColorVO;
import com.ict.persistent.SizeVO;
import com.ict.service.BoardService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping(value="secu")
public class SecurityContoller {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/admin")
	public void admin() {
		
	}
	
	@GetMapping("/boardInsertForm")
	public void boardInsertForm() {
		
	}
	
	@PostMapping("/boardInsert")
	public String boardInsert(BoardVO vo, String[] color, String[] size) {
		vo.setColor(new ArrayList<ColorVO>());
		vo.setSize(new ArrayList<SizeVO>());
		log.info("-------------------");
		for(String sizeItem : size) {
			SizeVO sizeVO = new SizeVO();
			sizeVO.setSizeName(sizeItem);
			sizeVO.setBoardNum(vo.getBoardNum());
			vo.getSize().add(sizeVO);
		}
		service.insertBoard(vo);
		log.info("---- 칼라 시작-----");
		log.info(vo.getColor());
		
		for(String colorItem : color) {
			ColorVO colorVO = new ColorVO();
			colorVO.setColor(colorItem);
			colorVO.setBoardNum(vo.getBoardNum());
			vo.getColor().add(colorVO);
		}
		service.insertBoard(vo);
		log.info(vo.getSize());
		
		return "/main";
	}

}
