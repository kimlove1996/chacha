package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.chacha.dao.MemberDAO;

public class idCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userid = request.getParameter("id");
		System.out.println("id:" + userid);
		
		if(userid !=null) {
			if(userid.trim().equals("") == false) {
				System.out.println("test");
				MemberDAO mDao = MemberDAO.getInstance();
				
				String message = mDao.confirmID(userid);
				System.out.println("메세지: "+ message);
				
				// json-simple라이브러리 필요
				JSONObject jObj = new JSONObject();
				jObj.put("message",message);
				jObj.put("id",userid);
				
				//JSON객체에 담은 데이터를 호출한 페이지로 전송하는 기능
				response.setContentType("application/x-json; charset=UTF-8");
				response.getWriter().print(jObj);
				
			}
		}
		
		return null;
		
	}

}
