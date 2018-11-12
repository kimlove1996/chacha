package com.chacha.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.BoardDAO;
import com.chacha.dto.BoardDTO;
import com.chacha.dto.CriteriaDTO;
import com.chacha.dto.PageMakerDTO;

public class BoardSearchAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boardlist.jsp";
		
		
		String flag = request.getParameter("flag");
		String keyword = request.getParameter("keyword");
		System.out.println(flag +","+ keyword);
		
		
		
		
		
		// keyword와 tyep으로 검색된 게시글 리스트가 출력.
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호 : " + page);
		criDto.setPage(page);
		
		BoardDAO bDao = BoardDAO.getInstance(); // boardDAO 호출. -> bDao에 값 담음.
		
		
		
		// 게시글 목록(정보들) 출력
		criDto.setKeyword(keyword);
		criDto.setFlag(flag);
		
		List<BoardDTO> SearchList = bDao.boardSearchAll(criDto); // 담은 값 DTO에 한줄씩 list로 담음.
		System.out.println(SearchList+"결과값");
		request.setAttribute("boardList", SearchList);
		
		
		//현재날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalCount = bDao.totalCount(criDto);
		pageMaker.setTotalCount(totalCount);
		request.setAttribute("pageMaker", pageMaker);
		
		System.out.println(pageMaker + toString());
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);	
		
		return forward;
	}

}
