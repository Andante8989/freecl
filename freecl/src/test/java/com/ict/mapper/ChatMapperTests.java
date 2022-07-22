package com.ict.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.persistent.ChatVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ChatMapperTests {
	
	@Autowired
	private ChatMapper mapper;
	
	//@Test
	public void insertRoom() {
		ChatVO vo = new ChatVO();
		log.info("vo : " +vo);
		vo.setRoomname("ddd");
		mapper.insertRoom(vo);
		log.info("vo : " + vo);
		
	}
	
	@Test
	public void getList(){
		log.info(mapper.getList());
		
	}

}
