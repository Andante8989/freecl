package com.ict.mapper;

import java.util.List;

import com.ict.persistent.NoticeVO;

public interface NoticeMapper {

	public List<NoticeVO> getList();
	
	public NoticeVO getListDetail(Long nt_num);
}
