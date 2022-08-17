package com.ict.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.ChartMapper;
import com.ict.persistent.ChartVO;

@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	private ChartMapper mapper;

	@Override
	public ChartVO getList() {
		return mapper.getList();
	}
	
	
	

}
