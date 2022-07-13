package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.BoardMapper;
import com.ict.persistent.BoardVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
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
}
