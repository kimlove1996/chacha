package com.chacha.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.ProductDAO;
import com.chacha.dto.ProductDTO;

public class IndexAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "index.jsp";
		
		// 동작하는 부분
		// : Best상품을 출력 -> Best상품을 DB에서 조회.
		// Model단으로 이동합니다.(DAO)
		/*ProductDAO pDao = new ProductDAO();*/
		
		// productDTO타입의 ArrayList객체를 생성
		/*ArrayList<ProductDTO> bestlist = new ArrayList<>();*/
		//ProductDAO 클래스의 bestView() 메서드를 호출.
		//메서드 실행 후 return값을 bestlist 변수에 담는다.
		
		//싱글톤 패턴
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> bestlist = pDao.bestView();
		
		
		
		
		
		
		
		
		
		/*bestlist = pDao.bestView();*/ // best상품 목록이 담겨져있음.
		//View단으로 전송할 데이터를 담는다.
		//					(이름표       , 실제 값   );
		request.setAttribute("bestlist", bestlist);
		/*for (ProductDTO productDTO : bestlist) {
			System.out.print(productDTO.getP_code() + "\t");
			System.out.print(productDTO.getP_name() + "\t");
			System.out.print(productDTO.getP_ex() + "\t");
			System.out.print(productDTO.getP_price() + "\t");
			System.out.print(productDTO.getP_img() + "\t");
			System.out.print(productDTO.getP_review() + "\t");
			System.out.print(productDTO.getP_indate() + "\t");
			System.out.println();
		}*/
		
		
		
		/*pDao.bestView();*/
		
		
		// 어떤 View단으로 이동하는지 설정.
		ActionForward forward = new ActionForward(); // ActionForward객체 생성.
		//ActionForward 클래스에 setpath()메서드를 호출
		//매개변수로 url값("index.jsp")을 전송.
		forward.setPath(url);		// index.jsp로 이동
		//ActionForward 클래스에 setRedirect()메서드를 호출.
		//매개변수로 boolean타입의 false값을 전송.
		forward.setRedirect(false); // forward방식을 사용.
		
		return forward;
	}

}
