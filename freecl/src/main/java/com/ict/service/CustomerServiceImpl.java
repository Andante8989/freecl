package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.CustomerMapper;
import com.ict.persistent.CustomerVO;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerMapper mapper;
	
	@Override
	public List<CustomerVO> getList() {
		return mapper.getList();
	}

}
