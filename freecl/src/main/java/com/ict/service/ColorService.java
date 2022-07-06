package com.ict.service;

import java.util.List;

import com.ict.persistent.ColorVO;

public interface ColorService {

	public List<ColorVO> getList();
	
	public List<ColorVO> getListDetail(Long boardNum);
}
