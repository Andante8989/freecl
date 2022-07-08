package com.ict.mapper;

import java.util.List;

import com.ict.persistent.SizeVO;

public interface SizeMapper {

	public List<SizeVO> getListDetail(Long boardNum);
	
	public void insertSize(SizeVO vo);
}
