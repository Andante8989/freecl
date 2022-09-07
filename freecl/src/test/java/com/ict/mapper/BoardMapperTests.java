package com.ict.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.persistent.BoardAttachVO;
import com.ict.persistent.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	@Autowired
	private BoardMapper mapper;
	
	//@Test
	public void getListTest() {
		log.info(mapper.getList());
	}
	
	//@Test
	public void getListDetailTest() {
		log.info(mapper.getListDetail(3L));
	}
	
	// boardTbl , colorTbl, sizeTbl left OUTER JOIN해서 전체 조회하는 테스트구문
	//@Test
	public void getListTests() {
		BoardVO vo = mapper.read(6L);
		log.info(vo);
		vo.getColorList();
	}
	
	//@Test
	public void getBoardNum() {
		log.info(mapper.getBoardNum());
	}
	
	//@Test
	public void deleteBoard() {
		mapper.deleteBoard(69L);

	}
	
	/* 이미지 등록 */
	//@Test
	public void imageEnrollTest() {
		
		BoardAttachVO vo = new BoardAttachVO();
		
		vo.setBoardNum(93);
		vo.setFileName("test");
		vo.setUploadPath("test");
		vo.setUuid("test2");
		
		mapper.imageEnroll(vo);
		
	}
}
