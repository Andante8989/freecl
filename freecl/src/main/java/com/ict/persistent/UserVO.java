package com.ict.persistent;

import java.util.List;

import lombok.Data;

@Data
public class UserVO {

	private String userId;
	private String upw;
	private String uname;
	private String email;
	private String p_num;
	private String addr;
	private String enabled;
	private List<AuthVO> authList;
}
