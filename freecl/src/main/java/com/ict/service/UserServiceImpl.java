package com.ict.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mapper.UserMapper;
import com.ict.persistent.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper mapper;

	@Override
	public void insertUser(UserVO vo) {
		mapper.insertUserTbl(vo);
		mapper.insertUserAuth(vo);

	}

}
