package com.ict.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.mapper.UserMapper;
import com.ict.persistent.UserVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"
})
@Log4j
public class MemberTests {
	
	@Autowired
	private UserMapper mapper;
	
	@Autowired
	private PasswordEncoder pwen;
	
	@Autowired
	private DataSource ds;
	
	//@Test
	public void testCryptDefaultDB() {
		
		String[] idList = {"user00", "member00", "admin00"};
		
		String sql = "UPDATE userTbl set upw=? WHERE userId=?";
		
		try {
			Connection con = ds.getConnection();
			
			for(String id : idList) {
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, pwen.encode(id));  // .encode()암호화 decode가 복호화
				pstmt.setString(2, id);
				pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Test
	public void testRead() {
		
		UserVO vo = mapper.read("admin00");
		log.info(vo);
		vo.getAuthList();
	}
	
	
	
	
	
}
