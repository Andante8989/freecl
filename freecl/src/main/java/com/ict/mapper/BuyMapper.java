package com.ict.mapper;

import java.util.List;

import com.ict.persistent.BuyVO;

public interface BuyMapper {

	public void insertBuy(BuyVO vo);
	
	public List<BuyVO> getBuyDetail(String buyer);
}
