package com.chacha.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.chacha.common.DBManager;
import com.chacha.dto.ProductDTO;
import com.chacha.mybatis.SqlMapConfig;

import oracle.sql.DATE;


public class ProductDAO {
	
	//MyBatis 셋팅값 호출
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	
	//mapper에 접근하기 위한 SqlSession
	SqlSession sqlSession;
	
	//싱글톤으로 new없이 사용하기 때문에
	//다른곳에 new로 객체생성 못하게 private로 막음.
	private ProductDAO() {}
		
	// 싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용.
	// 객체생성 1회 실시
	private static ProductDAO instance = new ProductDAO();	
	
	//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유.
	public static ProductDAO getInstance() {
		return instance;
	}
	
	//실제 동작들...
	
	//Best 상품목록 출력(Index 페이지)
	public List<ProductDTO> bestView(){
		sqlSession = sqlSessionFactory.openSession(); //sqlSessionFactory를 연 상태를 sqlSession에 담았음.
		List<ProductDTO> bestlist = null;
		try {
			bestlist = sqlSession.selectList("bestView"); // 한번에 바로 값을 담아서 while문을 돌려서 rs에 값을 담는 짓을 쓸 필요가 없어짐.
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return bestlist;
	}
	
	public List<ProductDTO> newView(){
		sqlSession = sqlSessionFactory.openSession();
		List<ProductDTO> newlist = null;
		try {
			newlist = sqlSession.selectList("newView");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return newlist;
	}

	public ProductDTO productDetail(String p_code) {
		sqlSession = sqlSessionFactory.openSession();
		ProductDTO pDto = null;
		
		try  {
			pDto = sqlSession.selectOne("productDetail", p_code);
			/*System.out.println(pDto);*/
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return pDto;
	}
	

//	======================================================================	
// Mybatise 사용하기 전 DBManaer와 PrepareStatement 방식으로 구현한 SAO 객체	
	
//	
//	Connection conn = null;
//	PreparedStatement pstmt = null;
//	ResultSet rs = null;
//	ArrayList<ProductDTO> list = new ArrayList<>();
//	int result = 0;
//	
//	public ArrayList<ProductDTO> bestView(){
//		try {
//			conn = DBManager.getConnection();
//			String sql = "SELECT * FROM best_pro_view";
//			pstmt = conn.prepareStatement(sql);
//			rs = pstmt.executeQuery();
//			
//			while(rs.next()) {
//				String p_code = rs.getString("p_code");
//				String p_name = rs.getString("p_name");
//				String p_ex = rs.getString("p_ex");
//				int	   p_price = rs.getInt("p_price");
//				String p_img = rs.getString("p_img");
//				String p_review = rs.getString("p_review");
//				Date p_indate = rs.getDate("p_indate");
//				ProductDTO pDto = new ProductDTO(p_code, p_name, p_ex, p_price, p_img, p_review, p_indate);
//				list.add(pDto);
//				
//			}
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			DBManager.close(conn, pstmt, rs);
//		}
//		
//		return list;
//	}
}
