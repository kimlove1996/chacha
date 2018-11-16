package com.chacha.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.chacha.dto.ReplyDTO;
import com.chacha.mybatis.SqlMapConfig;

public class ReplyDAO {
	SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
	SqlSession sqlSession;
	
	
	private ReplyDAO() {}
	private static ReplyDAO instance = new ReplyDAO();
	
	public static ReplyDAO getInstance() {
		return instance;
	}
	
	
	// 댓글 리스트 뽑기
	public List<ReplyDTO> replyListAll(String bno){
		List<ReplyDTO> list = null;
		sqlSession = sqlSessionFactory.openSession();
		
		try {
			list = sqlSession.selectList("replyListAll", bno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
	
	// 댓글 삭제
	public ReplyDTO replyDelete(String bno){
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.delete("deleteReply", bno);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return null;
	}
	
	
	//댓글 입력
	public ReplyDTO replyInsert(ReplyDTO rDto) {
		sqlSession = sqlSessionFactory.openSession();
		try {
			sqlSession.insert("insertReply", rDto);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return null;
	}
	
	
	
}
