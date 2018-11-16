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

public class BoardListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "board/boardlist.jsp"; //url 경로 생성
		
		
		
		
		
		
		
		
		
		
		// keyword와 tyep으로 검색된 게시글 리스트가 출력.
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		
		// 페이지 값이 비지 않았을 경우 request로 받은 page 넘버를 page에 입력합니다.
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호 : " + page);
		//현 page 번호를 criDto.setPage로 보내 값을 저장시킵니다.
		criDto.setPage(page);
		
		//코드에는 new라는 값을 담아놨습니다.
		String code = "new";
		
		//key를 받아왔을 떄 값이 비어있지 않다면,
		if(request.getParameter("key") != null) {
			System.out.println("키에 값이 들어있오요!");
			// 
			code = request.getParameter("key");
		}
		criDto.setCode(code);
		request.setAttribute("code", code); //핵심. key(중요값)값을 주고 받고 해야만 한다.
		
		String flag = null;
		String keyword = null;
		
		
		if(request.getParameter("keyword") != null) {
			System.out.println("===> 게시글 검색 기능 작동~>.ㅇ)/");
			
			flag = request.getParameter("flag");
			keyword = request.getParameter("keyword");
			criDto.setFlag(flag);
			criDto.setKeyword(keyword);
			
			// 값 확인
			System.out.println(page + ", " + flag + ", " + keyword);
			
			request.setAttribute("flag", flag);
			request.setAttribute("keyword", keyword);
		}
		
		
		
		BoardDAO bDao = BoardDAO.getInstance(); // boardDAO 호출. -> bDao에 값 담음.
		
		
		
		
		
		// 게시글 목록(정보들) 출력
		List<BoardDTO> boardList = bDao.boardListAll(criDto); // 담은 값 DTO에 한줄씩 list로 담음.
		request.setAttribute("boardList", boardList);
		
		
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

	private char[] toString(List<BoardDTO> boardList) {
		// TODO Auto-generated method stub
		return null;
	}

}
