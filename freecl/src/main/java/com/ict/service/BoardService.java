package com.ict.service;

import java.util.List;

import com.ict.persistent.BoardVO;

public interface BoardService {
	
	public List<BoardVO> getList();
	
	public BoardVO getListDetail(Long boardNum);
	
	public void insertBoard(BoardVO vo);
	
	public int getBoardNum();
	
	public void deleteBoard(Long boardNum);
}
