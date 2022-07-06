package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.SizeMapper;
import com.ict.persistent.SizeVO;

@Service
public class SizeServiceImpl implements SizeService {
	
	@Autowired
	private SizeMapper mapper;

	@Override
	public List<SizeVO> getListDetail(Long boardNum) {
		return mapper.getListDetail(boardNum);
	}

}
