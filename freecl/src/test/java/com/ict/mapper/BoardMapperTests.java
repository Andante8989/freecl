package com.ict.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
	
	@Test
	public void getListTests() {
		BoardVO vo = mapper.read(6L);
		log.info(vo);
		vo.getColor();
	}
}
