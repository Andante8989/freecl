package com.ict.service;

import java.util.List;

import com.ict.persistent.BuyVO;

public interface BuyService {

	public void insertBuy(BuyVO vo);
	
	public List<BuyVO> buyList(String buyer);
}
