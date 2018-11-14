package com.chacha.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.chacha.dto.BoardDTO;
import com.chacha.dto.CriteriaDTO;
import com.chacha.mybatis.SqlMapConfig;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	
	
	
	public List<BoardDTO> boardListAll(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = new ArrayList<>();

		try {
			list = sqlSession.selectList("boardList", criDto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		sqlSession.close();
		
		return list;
	}
	
	
	public int totalCount(CriteriaDTO criDto) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			result = sqlSession.selectOne("countPaging",criDto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return result;
	}
	
	
	public List<BoardDTO> boardSearchAll(CriteriaDTO criDto){
		sqlSession = sqlSessionFactory.openSession();
		List<BoardDTO> list = null;

		try {
			list = sqlSession.selectList("SearchList",criDto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
		}
	
		return list;
	}
	
	
	public BoardDTO boardDetailView(String bno){
		sqlSession = sqlSessionFactory.openSession();	
		BoardDTO bDto = null;
		
		
		try {
			bDto = sqlSession.selectOne("boardDetailView", bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return bDto;
	}
	
	
	
	
	public void viewCnt(String bno, HttpSession countSession) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			long update_time = 0; //@ 10시 30분 1초
			int result = 0;
			
			//조회수를 증가할 때 생기는 read_time_게시글번호가 없으면
			//현재 처름 조회수를 1증가하는 경우
			
			//!bno를 50이라 가정.
			//!read_time_50 = null
			if(countSession.getAttribute("read_time_" + bno) != null) {
				update_time = (long)countSession.getAttribute("read_time_" + bno);
			}
			
			
			//!아니라면 뛰어넘어서,
			
			
			//현재 시간을 담는다.
			long current_time = System.currentTimeMillis(); //!현재시간 10시 30분 5초!  //@10시 30분 15초
			
			//현재시간과 조회수 1증가한 시간을 비교해서 24시간(1일)이 지났으면
			//조회수 1증가
			if(current_time - update_time > 10000) { //!10000은 10초 //@ false!
				//현 시간 - update시간		> 10초	// 1시간은 24 * 60 * 60 * 1000
				result = sqlSession.update("viewCnt", bno);
				sqlSession.commit();
				
				//조회수 1증가한 시간을 session에 담는다.
				countSession.setAttribute("read_time_" + bno,  current_time);
				
				//!session저장소에 
				//read_time_50이라는 방을 하나 만들고
				//현재 시간을 저장한다. ( 10시 30분 5초)
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
	}
	
	
	
	public int boardInsert(BoardDTO bDto) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			
			//boardInsert = mammper로 가져가는 네임값임.
			result = sqlSession.insert("boardInsert", bDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
			return result;
		}
	
	
	
	
	public int boardUpdate(BoardDTO bDto) {
		System.out.println();
		int result = 0;
		sqlSession = sqlSessionFactory.openSession();
		try {
			result = sqlSession.update("boardUpdate", bDto);
			System.out.println("dto까지 갔다온 리절트 값 : ");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
			return result;
	}
	
	
	
	public int boardDelete(int bno) {
		sqlSession = sqlSessionFactory.openSession();
		int result = 0;
		try {
			
			//boardInsert = mammper로 가져가는 네임값임.
			result = sqlSession.update("boardDelete", bno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
			return result;
	}
	
	
	
	
	
	
			
	
	
}
