package com.ict.persistent;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

@Getter
public class CustomUser extends User{


	private static final long serialVersionUID= 1L;
	
	private UserVO user;
	
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> auth) {
		super(username, password, auth);
		
	}
	
	public CustomUser(UserVO vo) {
		super(vo.getUserId(), vo.getUpw(),
				vo.getAuthList().stream().map(author -> new SimpleGrantedAuthority(author.getAuth()))
		.collect(Collectors.toList()));		
		this.user = vo;
	} 
	
}
