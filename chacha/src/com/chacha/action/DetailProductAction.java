package com.chacha.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chacha.dao.ProductDAO;
import com.chacha.dto.ProductDTO;

public class DetailProductAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "detail_product.jsp";
		
		String p_code = request.getParameter("p_code");
		/*System.out.println("==>pno : " + p_code);*/
		
		ProductDAO pDao = ProductDAO.getInstance();
		ProductDTO pDto = pDao.productDetail(p_code);
		request.setAttribute("productview", pDto);
		/*System.out.println(pDto.toString());*/
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);	
		
		return forward;
		
	}
	
}
