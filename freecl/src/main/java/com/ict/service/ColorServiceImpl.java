package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.ColorMapper;
import com.ict.persistent.ColorVO;

@Service
public class ColorServiceImpl implements ColorService {
	
	@Autowired
	private ColorMapper mapper;

	@Override
	public List<ColorVO> getList() {
		return mapper.getList();
	}

	@Override
	public List<ColorVO> getListDetail(Long boardNum) {
		return mapper.getListDetail(boardNum);
	}

	@Override
	public void insertColor(ColorVO vo) {
		mapper.insertColor(vo);
	}

}
