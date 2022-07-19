package com.ict.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.persistent.BuyVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BuyMapperTests {

	@Autowired
	private BuyMapper mapper;
	
	
	@Test
	public void testInsert() {
		BuyVO vo = new BuyVO();
		vo.setProductNum(81);
		vo.setBuyer("tree");
		vo.setBuy_price(8000);
		vo.setBuy_color("blue");
		vo.setBuy_size("s");
		vo.setBuy_amount(1);
		mapper.insertBuy(vo);
		
	}
}
