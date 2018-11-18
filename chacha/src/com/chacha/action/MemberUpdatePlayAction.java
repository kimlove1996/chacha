package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chacha.dao.MemberDAO;
import com.chacha.dto.MemberDTO;

public class MemberUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String url = "";
		
		
		// View단에서 전송한 데이터를 받아오기
		
		
				String id = request.getParameter("input_id");	// <- name의 값으로 들어온 애들임!!
				String name = request.getParameter("input_name");
				String phone = request.getParameter("input_ph");
				String zipcode = request.getParameter("postcode");
				String addr1 = request.getParameter("address");
				String addr2 = request.getParameter("address2");
				String email1 = request.getParameter("email_id");
				String email2 = request.getParameter("email_url");
				String email = email1+"@"+email2;
				
			
				MemberDTO mDto = new MemberDTO(id, name, phone, zipcode, addr1, addr2, email); //테스트 값
				System.out.println(mDto.toString()); // 테스트 값 호출
				
				
				MemberDAO mDao = MemberDAO.getInstance();
				
				int result  = mDao.updateMember(mDto);
				
				if(result > 0) { // 성공
					url = "index.bizpoll";
					
					// session값을 최신정보로 수정!!
					session.removeAttribute("id");
					session.setAttribute("loginUser", mDto);
					//최신회원정보
					//DB로 가서 SELECT 최신 회원정보
					
				}else { //실패
					url = "member_update.bizpoll";
					
				}
				
				
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		
	}

	
}
