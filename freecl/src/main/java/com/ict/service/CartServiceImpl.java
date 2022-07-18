package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.CartMapper;
import com.ict.persistent.CartVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartMapper mapper;

	@Override
	public List<CartVO> getList(String userId) {
		return mapper.getList(userId);
	}

	@Override
	public void cartInsert(CartVO vo) {
     	mapper.insert(vo);
	}

	@Override
	public CartVO selectCountInCart() {
		return mapper.selectCountInCart();
	}

	@Override
	public void cartDelete(Long cartNum) {
		mapper.delete(cartNum);
	}

	@Override
	public List<CartVO> getList2(Long num) {
		return mapper.getList2(num);
	}

}
