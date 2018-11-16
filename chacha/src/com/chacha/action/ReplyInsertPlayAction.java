package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.BoardDAO;
import com.chacha.dao.ReplyDAO;
import com.chacha.dto.ReplyDTO;

public class ReplyInsertPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int bno = Integer.parseInt(request.getParameter("re_bno"));
		String writer = request.getParameter("reply_id");
		String content = request.getParameter("border_reply");
		System.out.println("게시물 번호 ===>" + bno);
		System.out.println("작성자아이디 번호 ===>" + writer);
		System.out.println("내용물 ===>" + content);
		
		
		//게시글에 댓글 등록
		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
		rDao.replyInsert(rDto);
		
		//bno 게시글 reply_cnt + 1 증가
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntPlus(bno);
		
		return null;
	}

	
}
