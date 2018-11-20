package com.chacha.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.chacha.dao.MemberDAO;

public class LoginCheckTest {

	@Test
	public void testLoginCheck() {
		String id = "test";
		String pw = "1234";

		MemberDAO mDao = MemberDAO.getInstance();
		String result = mDao.confirmPW(id,pw);
		
			if(result.equals("-1")){
				System.out.println("로그인 성공하였습니다.");
			}else {
				System.out.println("로그인을 실패하였습니다.");
			}
	}
	
	
}
