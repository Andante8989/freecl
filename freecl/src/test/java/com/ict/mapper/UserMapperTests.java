package com.ict.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.persistent.UserVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMapperTests {
	
	@Autowired
	private UserMapper mapper;
	
	//@Test
	public void userDelete() {
		log.info("그린님을 삭제합니다");
		mapper.deleteUser("green");
		
		log.info("그린님을 삭제했습니다");
	}
	
	//@Test
	public void giveCouponTest() {
		UserVO vo = new UserVO();
		vo.setEnabled("0");
		vo.setUserId("Andante");
		mapper.giveCoupon(vo);
		log.info("쿠폰받았는지 확인 : " + vo);
	}
	
	@Test
	public void userDetailTest() {
		log.info(mapper.read("Andante"));
	}
}
