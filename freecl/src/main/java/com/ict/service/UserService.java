package com.ict.service;

import com.ict.persistent.UserVO;

public interface UserService {

	public void insertUser(UserVO vo);
	
	public int idCheck(String userId);
	
	public void updateUser(UserVO vo);
	
	public UserVO get(String u_id);
	
	public void deleteUser(String userId);
	
	
}
