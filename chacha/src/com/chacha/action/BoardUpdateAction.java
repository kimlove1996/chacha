package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.chacha.dao.BoardDAO;
import com.chacha.dto.BoardDTO;

public class BoardUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boardupdate.jsp";
		
		String bno = request.getParameter("bno");
		System.out.println("===>bno : " + bno);
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardDetailView(bno);
		
		request.setAttribute("boardview", bDto);
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);	
		
		return forward;
		
		
		
		
	}

}
