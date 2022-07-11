package com.ict.mapper;

import java.util.List;

import com.ict.persistent.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public BoardVO getListDetail(Long boardNum);
	
	public void insertBoard(BoardVO vo);
	
	public void insertBoardColor(BoardVO vo);
	
	public void insertBoardSize(BoardVO vo);
	
	public BoardVO read(Long boardNum);
}
