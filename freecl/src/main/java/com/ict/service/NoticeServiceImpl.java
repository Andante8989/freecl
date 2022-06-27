package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.NoticeMapper;
import com.ict.persistent.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper mapper;

	@Override
	public List<NoticeVO> getList() {
		return mapper.getList();
	}

	@Override
	public NoticeVO getListDetail(Long nt_num) {
		return mapper.getListDetail(nt_num);
	}

}
