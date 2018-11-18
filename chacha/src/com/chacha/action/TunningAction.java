package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TunningAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "welcom.jsp";
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);	
		
		return forward;
	}

}
