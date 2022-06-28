package com.ict.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.persistent.NoticeVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTests {
	
	@Autowired
	private NoticeMapper mapper;
	
	//@Test
	public void testGetList() {
		log.info(mapper.getList());
	}
	
	//@Test
	public void testGetListDetail() {
		log.info(mapper.getListDetail(2L));
	}
	
	//@Test
	public void testInsert() {
		NoticeVO vo = new NoticeVO();
		vo.setNt_title("테스트용 제목");
		vo.setNt_content("테스트용 내용");
		vo.setNt_writer("운영자");
		mapper.insert(vo);
	}
	
	//@Test
	public void testDelete() {
		mapper.delete(7L);
	}
	
	//@Test
	public void testUpdate() {
		NoticeVO vo = new NoticeVO();
		vo.setNt_title("28일 수정한 제목");
		vo.setNt_content("28일 수정한 내용");
		vo.setNt_writer("수정한 운영자");
		vo.setNt_num(10L);
		mapper.update(vo);
	}
}
