package com.ict.controller;


import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLDecoder;
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
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<BoardAttachVO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		
		log.info("uploadAjaxActionPOST..............");
		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {
				type = Files.probeContentType(checkfile.toPath());
				log.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(!type.startsWith("image")) {
				List<BoardAttachVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
			
		} // for문 끝
		
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
		
		/* 이미저 정보 담는 객체 */
		List<BoardAttachVO> list = new ArrayList();
		
		// 향상된 for
		for(MultipartFile multipartFile : uploadFile) {
			
			BoardAttachVO vo = new BoardAttachVO();
			
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();	
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
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
			list.add(vo);
		} // for
		ResponseEntity<List<BoardAttachVO>> result = new ResponseEntity<List<BoardAttachVO>>(list, HttpStatus.OK);
		return result;
	}
	
	
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(int boardNum) {
		return new ResponseEntity<>(service.getAttachList(boardNum), HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName) {
		log.info("deleteFile........" + fileName);
		
		File file = null;
		
		try {
			// 썸네일 파일 삭제
			file = new File("c:\\upload_data\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			log.info("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}


}
