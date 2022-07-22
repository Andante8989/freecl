package com.ict.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.ChatMapper;
import com.ict.persistent.ChatVO;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatMapper mapper; 

	@Override
	public void insertRoom(ChatVO vo) {
		mapper.insertRoom(vo);
		
	}

	@Override
	public List<ChatVO> getList() {
         return mapper.getList();
	}

}
