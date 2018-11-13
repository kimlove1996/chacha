package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.BoardDAO;

public class BoardDeletePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "boardList.bizpoll";
		
		String bno = request.getParameter("bno");
		System.out.println("===>삭제번호 : " + bno);
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		int bno1 = Integer.parseInt(bno);
		
		
		int result = bDao.boardDelete(bno1);
		
		request.setAttribute("boardDelete", bno);
		

		if(result > 0) { //등록 성공
			url = "boardList.bizpoll";
			System.out.println("삭제성공");
		}else { //등록실패
			url = "boardList.bizpoll";
			System.out.println("삭제실패");
		}
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);	
		
		return forward;
	}

}
