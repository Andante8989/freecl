package com.ict.mapper;

import com.ict.persistent.UserVO;

public interface UserMapper {

	public UserVO read(String userId);
	
	public void insertUserTbl(UserVO vo);
	
	public void insertUserAuth(UserVO vo);
	
	public int idCheck(String userId);
	
	public void updateUserTbl(UserVO vo);
	
	public UserVO getUserInfo(String u_id);
	
	public void deleteUser(String userId);
	
	public void deleteAuth(String userId);
}
