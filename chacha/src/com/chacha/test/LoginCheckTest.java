package com.chacha.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.chacha.dao.MemberDAO;

public class LoginCheckTest {

	@Test
	public void testLoginCheck() {
		String id = "test01";
		String pw = "test02";

		MemberDAO mDao = MemberDAO.getInstance();
		mDao.confirmPW(id,pw);
	}
	
	
}
