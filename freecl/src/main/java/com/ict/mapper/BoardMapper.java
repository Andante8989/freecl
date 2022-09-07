package com.ict.mapper;

import java.util.List;

import com.ict.persistent.BoardAttachVO;
import com.ict.persistent.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public BoardVO getListDetail(Long boardNum);
	
	public void insertBoard(BoardVO vo);
	
	public void insertBoardColor(BoardVO vo);
	
	public void insertBoardSize(BoardVO vo);
	
	public BoardVO read(Long boardNum);
	
	public int getBoardNum();
	
	public void deleteBoard(Long boardNum);
	
	public void deleteColor(Long boardNum);
	
	public void deleteSize(Long boardNum);
	
	public void imageEnroll(BoardAttachVO vo);

}
