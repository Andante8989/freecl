package com.ict.mapper;

import java.util.List;

import com.ict.persistent.BoardAttachVO;

public interface BoardAttachMapper {
	
	public void insert(BoardAttachVO vo);
	
	public List<BoardAttachVO> findByBno(int boardNum);
	
	public List<BoardAttachVO> getAttachList(int boardNum);
}
