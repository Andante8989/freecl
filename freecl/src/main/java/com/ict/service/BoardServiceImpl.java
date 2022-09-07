package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.BoardAttachMapper;
import com.ict.mapper.BoardMapper;
import com.ict.persistent.BoardAttachVO;
import com.ict.persistent.BoardVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private BoardAttachMapper attachMapper;
	
	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}

	@Override
	public BoardVO getListDetail(Long boardNum) {
		return mapper.getListDetail(boardNum);
	}

	@Override
	public void insertBoard(BoardVO vo) {
		log.info("서비스에서 vo 확인");
		log.info(vo);
		mapper.insertBoard(vo);
		mapper.insertBoardColor(vo);
		mapper.insertBoardSize(vo);
		
		// 이미지가 null값이거나 사이즈가 0보다 작으면 상품등록 안되도록 return 
		if(vo.getAttachList() == null || vo.getAttachList().size() <= 0) {
			return;
		}
		
		vo.getAttachList().forEach(attach ->{
			
			attach.setBoardNum(vo.getBoardNum());
			mapper.imageEnroll(attach);
			
		});
	}

	@Override
	public int getBoardNum() {
		return mapper.getBoardNum();
	}

	@Override
	public void deleteBoard(Long boardNum) {
		mapper.deleteColor(boardNum);
		mapper.deleteSize(boardNum);
		mapper.deleteBoard(boardNum);
		
	}

	@Override
	public List<BoardAttachVO> getAttachList(int boardNum) {
		return attachMapper.findByBno(boardNum);
	}
}
