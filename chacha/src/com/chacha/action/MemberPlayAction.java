package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.MemberDAO;
import com.chacha.dto.MemberDTO;

public class MemberPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "welcom.jsp"; // 문자열 타입의 url 변수를 만들어 놓은 것 뿐인 상태. 페이지 이동 기능 없습니다!
		request.setCharacterEncoding("UTF-8");
		
		// View단에서 전송한 데이터를 받아오기
		
		
		String id = request.getParameter("input_id");	// <- name의 값으로 들어온 애들임!!
		String pw = request.getParameter("input_pw");
		String name = request.getParameter("input_name");
		String phone = request.getParameter("input_ph");
		String zipcode = request.getParameter("postcode");
		String addr1 = request.getParameter("address");
		String addr2 = request.getParameter("address2");
		String email1 = request.getParameter("email_id");
		String email2 = request.getParameter("email_url");
		String email = email1+"@"+email2;
		
		System.out.println(id + pw + name + phone + zipcode + addr1 + addr2 + email);
		
		
		
		// MemberDAO 클래스의 insertMember() 메서드를 호출하고,
		// View단에서 전달한 데이터를 mDto에 담아 보냅니다.
		
		MemberDTO mDto = new MemberDTO(id, pw, name, phone, zipcode, addr1, addr2, email);
		System.out.println(mDto.toString());
		
		MemberDAO mDao = MemberDAO.getInstance();
		
		
		int result = mDao.insertMember(mDto);
		
		
		
		if(result > 0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		
		
		//ActionForward 객체 생성
		//forward 인스턴스 생성한 상태!
		ActionForward forward = new ActionForward();
		//ActionForward 클래스의 setPath() 함수를 호출하고, url값을 매개변수로 전달합니다.
		forward.setPath(url); // => 상단에 String url = "welcom.jsp";이것
		
		
		//ActionForward 클래스의 setRedirect()메서드를 호출하고.
		//true라고 하는 boolean 값을 매개변수로 전달합니다.
		forward.setRedirect(true);
		
		return forward;
		
	}

}
