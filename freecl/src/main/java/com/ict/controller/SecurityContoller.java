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
	public String boardInsert(BoardVO vo, String[] color, String[] sizeName) {
		log.info("----boardInsert 접속 시작--");
		int start = service.getBoardNum();
		vo.setBoardNum(start);

		vo.setColorList(new ArrayList<ColorVO>());
		vo.setSizeList(new ArrayList<SizeVO>());
		
		for(String sizeItem : sizeName) {
			SizeVO sizeVO = new SizeVO();
			sizeVO.setSizeName(sizeItem);
			sizeVO.setBoardNum(vo.getBoardNum());
			vo.getSizeList().add(sizeVO);
		
		}
		
		for(String colorItem : color) {
			ColorVO colorVO = new ColorVO();
			colorVO.setColor(colorItem);
			colorVO.setBoardNum(vo.getBoardNum());
			vo.getColorList().add(colorVO);
			
		}
		service.insertBoard(vo);
		
		return "redirect:/main";
	} 
	@GetMapping("/boardDeleteForm")
	public void boardDeleteForm() {
		
	}
	
	
	@PostMapping("/boardDelete")
	public String boardDelete(String boardNum) {
		Long bNum = Long.parseLong(boardNum);
		service.deleteBoard(bNum);
		return "/secu/admin";
	}

}
