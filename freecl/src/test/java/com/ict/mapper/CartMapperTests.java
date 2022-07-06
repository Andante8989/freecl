package com.ict.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.persistent.CartVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {

	@Autowired
	private CartMapper mapper;
	
	//@Test
	public void getListTest() {
		log.info(mapper.getList());
	}
	
	//@Test
	public void insertCartTest() {
		CartVO vo = new CartVO();
		vo.setCart_proNum(6L);
		vo.setCart_amount(3L);
		
		mapper.insert(vo);
	}
	
	//@Test
	public void deleteCartTest() {
		mapper.delete(2L);
	}
	
}
