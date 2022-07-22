package com.ict.service;

import java.util.List;

import com.ict.persistent.ChatVO;

public interface ChatService {
	
	public void insertRoom(ChatVO vo);
	
	public List<ChatVO> getList();

}
