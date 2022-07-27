package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.BuyMapper;
import com.ict.persistent.BuyVO;

@Service
public class BuyServiceImpl implements BuyService{
	
	@Autowired
	private BuyMapper mapper;

	@Override
	public void insertBuy(BuyVO vo) {
		mapper.insertBuy(vo);
	}

	@Override
	public List<BuyVO> getBuyDetail(String buyer) {
		return mapper.getBuyDetail(buyer);
	}

}
