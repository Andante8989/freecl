package com.ict.controller;


import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ict.persistent.BoardAttachVO;
import com.ict.persistent.BoardVO;
import com.ict.persistent.ColorVO;
import com.ict.persistent.SizeVO;
import com.ict.service.BoardService;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;
import net.coobird.thumbnailator.Thumbnails;

@Log4j
@Controller
@RequestMapping(value="/secu")
public class SecurityContoller {
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		log.info("날짜 갓 생성 : " + date);
		String str = sdf.format(date);
		log.info("포맷 형식이 바뀐 날짜 : " + str);
		return str.replace("-", File.separator);
	}
	
	// 썸네일인지 아닌지 체크해주는 기능
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	} // private boolean 끝
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/admin")
	public void admin() {
		
	}
	
	@GetMapping("/boardInsertForm")
	public void boardInsertForm() {
		
	}
	
	@ResponseBody
	@PostMapping(value="/uploadAction", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<BoardAttachVO>> fileUpload(BoardVO vo, MultipartFile[] uploadFile) {
				
		List<BoardAttachVO> list = new ArrayList<>();
		String uploadFolder = "C:\\upload_data\\temp";
		
		String uploadFolderPath = getFolder();
		
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		
		if(uploadPath.exists()== false) {
			uploadPath.mkdirs();
		}
		
		for(MultipartFile multipartFile : uploadFile) {
			BoardAttachVO attachDTO = new BoardAttachVO();
			
			String uploadFileName = multipartFile.getOriginalFilename();
			
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			
			log.info("only file name : " + uploadFileName);
			
			attachDTO.setFileName(uploadFileName);
			
			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);
				attachDTO.setUploadPath(uploadFolderPath);
				
				if(checkImageType(saveFile)) {
					
					FileOutputStream thumbnail = new FileOutputStream(
							new File(uploadPath, "s_" + uploadFileName));
					
					Thumbnailator.createThumbnail(
							multipartFile.getInputStream(), thumbnail,100, 100);
					
					thumbnail.close();
				}
				list.add(attachDTO);
			} catch(Exception e) {
				e.printStackTrace();
			}
		 } // for끝나는 지점
		
		return new ResponseEntity<>(list, HttpStatus.OK);
		
	
	} 
	
	@PostMapping("/boardInsert")
	public String boardInsert(BoardVO vo, String[] color, String[] sizeName) {

		log.info("----boardInsert 접속 시작--");
		// 사이즈, 색상 테이블은 상품번호가 먼저 있어야 생성이 가능하므로 통상적인 방법으론 상품등록시 오류가남
		// 미리 다음번호를 가져와서 상품등록시 같이 등록될수 있도록 해야함
		// 다음번호를 start변수에 저장
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
		
		return "/main";
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
	
	// 첨부파일 업로드
	@PostMapping("/uploadAjaxAction")
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		
		String uploadFolder = "C:\\upload_data";
		
		// 날짜 폴더 경로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		// 향상된 for
		for(MultipartFile multipartFile : uploadFile) {
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();	
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);
				/*
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				
				BufferedImage bo_image = ImageIO.read(saveFile);
					// 비율
					double ratio = 3;
					넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);	
				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
								
				Graphics2D graphic = bt_image.createGraphics();
				
				graphic.drawImage(bo_image, 0, 0, width,height, null);
					
				ImageIO.write(bt_image, "jpg", thumbnailFile);
				*/
				/* 방법 2 */
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);		
				
				BufferedImage bo_image = ImageIO.read(saveFile);

				//비율 
				double ratio = 3;
				//넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);
				
				Thumbnails.of(saveFile)
		        .size(width, height)
		        .toFile(thumbnailFile);
			} catch (Exception e) {
				e.printStackTrace();
			} 		
		}
	}
	
	
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(int boardNum) {
		return new ResponseEntity<>(service.getAttachList(boardNum), HttpStatus.OK);
	}
	
	private void deleteFiles(List<BoardAttachVO> attachList) {
		if(attachList == null || attachList.size() == 0) {
			return;
		}
		
		log.info(attachList);
		
		attachList.forEach(attach -> {
			try {
				Path file = Paths.get("c:\\upload_data\\temp\\" + attach.getUploadPath() + "\\" + "_" + attach.getFileName());
				
				Files.deleteIfExists(file);
				
				if(Files.probeContentType(file).startsWith("image")) {
					Path thumbNail = Paths.get("C:\\upload_data\\temp\\" + attach.getUploadPath() + "\\s_" + "_" + attach.getFileName());
					Files.delete(thumbNail);
 				}
			
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}); // forEach 끝나는지점
	}
	
	
	@GetMapping("/display")
	@ResponseBody
	// byte 자료형인 이유는 그림정보이므로 2진수를 보내야되서
	public ResponseEntity<byte[]> getFile(String fileName) {
		log.info("fileName: " + fileName);
		
		File file = new File("c:\\upload_data\\temp\\" + fileName);
		
		log.info("file : " + file);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			// 스프링쪽 HttpHeaders import 하기 // java.net으로 임포트시 생성자가 오류남
			HttpHeaders header = new HttpHeaders();
			
			// 이 메시지를 통해서 헤더부분의 파일정보가 들어감
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),header, HttpStatus.OK);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

}
