package com.ict.mapper;

import java.util.List;

import com.ict.persistent.ChatVO;

public interface ChatMapper {
	


	public void insertRoom(ChatVO vo);
	
	public List<ChatVO> getList();

}
