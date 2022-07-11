package com.ict.mapper;

import com.ict.persistent.UserVO;

public interface UserMapper {

	public UserVO read(String userId);
	
	public void insertUserTbl(UserVO vo);
	
	public void insertUserAuth(UserVO vo);
}
