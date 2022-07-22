package com.ict.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public int idCheck(String userId) {
		int check = mapper.idCheck(userId);
		return check;
	}

	@Override
	public void updateUser(UserVO vo) {
		mapper.updateUserTbl(vo);
	}

	@Override
	public UserVO get(String u_id) {
		UserVO user = mapper.getUserInfo(u_id);
		return user;
	}
	

	@Override
	public void deleteUser(String userId) {
		mapper.deleteAuth(userId);
		mapper.deleteUser(userId);
	}

	@Override
	public void giveCoupon(UserVO vo) {
		mapper.giveCoupon(vo);
		
	}
}
