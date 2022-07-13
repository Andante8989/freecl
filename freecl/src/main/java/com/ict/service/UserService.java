package com.ict.service;

import com.ict.persistent.UserVO;

public interface UserService {

	public void insertUser(UserVO vo);
	
	public int idCheck(String userId);
}
