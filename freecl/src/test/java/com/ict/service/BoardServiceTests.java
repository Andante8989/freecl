package com.ict.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private CartService service2;
	
	//@Test
	public void getBoardNum() {
		log.info(service.getBoardNum());
	}
	
	//@Test
	public void deleteBoard() {
		service.deleteBoard(70L);
	}
	
	@Test
	public void getCartList() {
		service2.getList("tree");
	}
}
