package com.ict.mapper;

import java.util.List;

import com.ict.persistent.CartVO;

public interface CartMapper {
	
	public List<CartVO> getList();
	
	public List<CartVO> getList2(Long num);
	
	public void insert(CartVO vo);
	
	public CartVO selectCountInCart();
	
	public void delete(Long cartNum);

}
