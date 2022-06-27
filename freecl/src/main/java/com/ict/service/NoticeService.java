package com.ict.service;

import java.util.List;

import com.ict.persistent.NoticeVO;

public interface NoticeService {

	public List<NoticeVO> getList();
	
	public NoticeVO getListDetail(Long nt_num);
}
