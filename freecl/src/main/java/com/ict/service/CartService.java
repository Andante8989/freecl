package com.ict.service;

import java.util.List;

import com.ict.persistent.CartVO;

public interface CartService {

	public List<CartVO> getList();
	
	public void cartInsert(CartVO vo);
	
	public CartVO selectCountInCart();
	
	public void cartDelete(Long cartNum);
	
	public List<CartVO> getList2(Long num);

}
