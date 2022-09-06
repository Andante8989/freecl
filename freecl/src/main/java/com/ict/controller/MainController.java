package com.ict.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.persistent.BoardAttachVO;
import com.ict.persistent.BoardVO;
import com.ict.service.BoardService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(Model model) {
		List<BoardVO> boardList = service.getList();
		model.addAttribute("boardList", boardList);
		return "/main";
	}
	
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
		log.info("getImage()........ " + fileName);
		File file = new File("c:\\upload_data\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	
	

}
