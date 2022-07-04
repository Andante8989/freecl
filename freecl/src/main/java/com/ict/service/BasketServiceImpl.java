package com.ict.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.BasketMapper;
import com.ict.persistent.BasketVO;

@Service
public class BasketServiceImpl implements BasketService {

	@Autowired
	private BasketMapper mapper;
	
	@Override
	public void insertBasket(BasketVO vo) {
		mapper.insert(vo);
	}

}
