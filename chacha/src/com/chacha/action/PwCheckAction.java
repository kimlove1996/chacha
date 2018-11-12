package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.chacha.dao.MemberDAO;
import com.chacha.dto.MemberDTO;

public class PwCheckAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pw = request.getParameter("pw");
		String id = request.getParameter("id");
		System.out.println("pw:"+pw);
		System.out.println("id"+id);
		// ajax에서 pw= 라고 써져있는 이름 값(pw)임.
		
		
		
		
		
		
		MemberDAO mDao =  MemberDAO.getInstance();
		String message = mDao.confirmPW(id, pw);
		System.out.println("메세지: " + message);
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		jObj.put("id", id);
		jObj.put("pw", pw);
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jObj);
		
		
// 1. 현재 비밀번호
//		가) null 값 체크
//		나) 현재 비밀번호와 일치하는지 체크
// 2. 새 비밀번호
//		가) null값 체크
//		나) password 정규식 체크
// 3. 새 비밀번호 확인
//		가) null값 체크
//		나) 새비밀번호와 새 비밀번호 확인 값이 일치하는지 체크
// 4. 현재 비밀번호와 새 비밀번호가 동일한지 체크
//		 - 동일하지 않다면 : 새 비밀번호와 새비밀번호 확인 값 초기화시키고 새비밀번호로 focuse(), 새 시빌먼호 경고메시지 "현재비밀번호와 동일합니다" 출력.
		
		
		
		
		
		//DB에서 pw값 가지고 와서 비교
		//SELECT pw FROM member
		//WHERE id = ?;
		
		//id값을 구하는 방법 2가지(session)
		//1 . Controller단에서 Session객체 호출해서 ID값 빼오는 방법
		//2 . View단에서 Session에 담겨있는 id값을 pw값과 함께 보내는 방법. !2번이더 쉬움.
				
		return null; //forward = action.excute(request,response); <- 이안에 null이 들어가게 되어야 프론트 컨트롤러에서 forward != null문에 걸려서 페이지를 아무것도 안타게 됩니다.
		
	}

}
