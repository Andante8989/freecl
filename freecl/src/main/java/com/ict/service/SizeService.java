package com.ict.service;

import java.util.List;

import com.ict.persistent.SizeVO;

public interface SizeService {

	public List<SizeVO> getListDetail(Long boardNum);
}
