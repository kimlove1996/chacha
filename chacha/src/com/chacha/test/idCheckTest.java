package com.chacha.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.chacha.dao.MemberDAO;

public class idCheckTest {
	String userid = "sentilemon02";

	@Test
	public void testConfirmID() {
		MemberDAO mDao = MemberDAO.getInstance();
		
		mDao.confirmID(userid);
	}

}
