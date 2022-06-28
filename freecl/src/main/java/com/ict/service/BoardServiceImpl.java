package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ict.mapper.BoardMapper;
import com.ict.persistent.BoardVO;

public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}

}
