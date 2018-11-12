package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.MemberDAO;
import com.chacha.dto.MemberDTO;

public class MemberUpdatepwPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("안뇨옹?");
		String url = "member_pw_update.jsp";
		
		String id = request.getParameter("updateId");
		String pw = request.getParameter("input_pw_now");
		System.out.println("변경할 id:" + id);
		System.out.println("변경할 pw:" + pw);
		
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		int result = mDao.updatePw(id,pw);
		if(result > 0) {// 수정성공
			url = "index.bizpoll";
		}else { // pw수정실패
			url = "member_pw_update.jsp";
		}
		
		//새비밀번호
		//값 못받아온다!!!
		//1 . getparameter("")매개변수가 name값으,로 설정돼이쓴닞 확인한다.
		//2 . 현재 Action단으로 이동하는지 체크!
		// -console창에 *.bizpoll이 출력되는지 확인.
		// 가) 안탐
		//    : 화면다능로 가서 form태그에 action 속성값, submit() 등을 확인.
		// 나) 간다.
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		
	}

}
