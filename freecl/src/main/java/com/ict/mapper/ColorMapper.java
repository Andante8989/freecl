package com.ict.mapper;

import java.util.List;

import com.ict.persistent.ColorVO;

public interface ColorMapper {

	public List<ColorVO> getList();
	
	public List<ColorVO> getListDetail(Long boardNum);
	
	public void insertColor(ColorVO vo);
}
