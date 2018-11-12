package com.chacha.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.chacha.common.DBManager;
import com.chacha.dto.MemberDTO;
import com.chacha.mybatis.SqlMapConfig;

public class MemberDAO {
		//MyBatis 셋팅값 호출
		SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlSession();
		
		//mapper에 접근하기 위한 SqlSession
		SqlSession sqlSession;
		
		//싱글톤으로 new없이 사용하기 때문에
		//다른곳에 new로 객체생성 못하게 private로 막음.
		private MemberDAO() {}
			
		// 싱글톤 패턴 - 객체생성 1회 실시 후 공유해서 사용.
		// 객체생성 1회 실시
		private static MemberDAO instance = new MemberDAO();	
		
		//외부에서 getInstance()를 활용하여 1회 실시한 객체를 공유.
		public static MemberDAO getInstance() {
			return instance;
		}
	
	
		
		
		
		
		
		
		
		//회원가입 = 회원등록
		public int insertMember(MemberDTO mDto) {
			int result = 0;
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.insert("insertMember", mDto);//mDto에 회원정보가 있기 때문에 함꼐 보내준다.
				sqlSession.commit();//insert, update, delete는 반드시!@
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return result;
		}
		
		
		
		//회원가입 페이지 ID중복체크(Ajax)
		public String confirmID(String userid) {
			String result = null;
			sqlSession = sqlSessionFactory.openSession();
			try {
				//단건이나온다 = selectOne, 여러건이 나온다 selectList
				result = sqlSession.selectOne("confirmID", userid);
				if(result != null) {
					result = "-1";
				}else {
					result = "1";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			return result;
			
		}
		
		
		
		
		//비밀번호 수정 페이지 현재 비밀번호와 일치하는지 확인.
		public String confirmPW(String userid, String userpw) {
			String result = null;
			sqlSession = sqlSessionFactory.openSession();
			MemberDTO mDto = new MemberDTO();
			mDto.setId(userid);
			mDto.setPw(userpw);
			try {
				result = sqlSession.selectOne("confirmPW",mDto);
				
				if(result != null) {
					result = "-1";
				}else {
					result = "1";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return result;
		}
		
		
		
		//로그인 기능
		public MemberDTO loginCheck(String userId, String userPw) {
			
			sqlSession = sqlSessionFactory.openSession();
			MemberDTO mDto = new MemberDTO();
			mDto.setId(userId);
			mDto.setPw(userPw);
			
			try {
				System.out.println("가져오아"+mDto.getId());
				mDto = sqlSession.selectOne("loginCheck", mDto);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return mDto;
			
		}
	
	
		
		//회원정보 수정(비밀번호 제외)
		public int updateMember(MemberDTO mDto) {
			int result = 0;
			
			sqlSession = sqlSessionFactory.openSession();
			try {
				result = sqlSession.update("updateMember", mDto);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return result;
			
		}
		
		
		
		
		//회원 패스워드 변경
		public int updatePw(String userId, String userPw) {
			int result = 0;
			sqlSession = sqlSessionFactory.openSession();
			MemberDTO mDto = new MemberDTO();
			mDto.setId(userId);
			mDto.setPw(userPw);
			
			try {
				result = sqlSession.selectOne("updatePw", mDto);
				sqlSession.commit();
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return result;
			
		}
		
		
		
		
		
		//회원탈퇴(삭제)
		public int deleteMember(String userid) {
			int flag = 0;
			sqlSession = sqlSessionFactory.openSession();
			try {
				flag = sqlSession.delete(userid);
				sqlSession.delete("deleteMember",userid);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			return flag;
		}
		
		
		
		
		
	
// ======================================================================
//	Connection conn = null;
//	PreparedStatement pstmt = null;
//	ResultSet rs = null;
//	ArrayList<MemberDTO> list = new ArrayList<>();
//	int result =0;
//	MemberDTO mDto;
//	
//	
//	
//	
//	
//	
//	public int insertMember(MemberDTO mDto){
//		try {
//			conn = DBManager.getConnection();
//			String sql = "INSERT INTO member(id,pw,name,phone,zipcode,addr1,addr2,email) "
//						+"VALUES(?,?,?,?,?,?,?,?)"; 
//					
//			pstmt = conn.prepareStatement(sql); // 여기까진 아직완성된 sql문이 아니다. 아래처럼 pstmt에 값을 담아주고 그 값을 담은 것을 result에 담는다.
//			pstmt.setString(1, mDto.getId());
//			pstmt.setString(2, mDto.getPw());
//			pstmt.setString(3, mDto.getName());
//			pstmt.setString(4, mDto.getPhone());
//			pstmt.setString(5, mDto.getZipcode());
//			pstmt.setString(6, mDto.getAddr1());
//			pstmt.setString(7, mDto.getAddr2());
//			pstmt.setString(8, mDto.getEmail());
//			
//			result = pstmt.executeUpdate(); // 즉 커넥션과 preaparestatement(sql),각각의 값이 들어 있는 상태로 리절트에 값을 담읍니다. 이렇게 되면 1이 들어있게됩니다.
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			DBManager.close(conn, pstmt);
//		}
//		
//		// 메서드 종료,
//		//return값(=result)을 가지고
//		//나를 호출한 곳으로 돌아갑니다.
//		return result;
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	// 로그인 여부를 체크함.
//	public MemberDTO loginCheck(String uid, String upw) {
//		try {
//			conn = DBManager.getConnection();
//			String sql = "SELECT * FROM member "
//					+ "WHERE id = ? AND pw = ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, uid);
//			pstmt.setString(2, upw);
//			rs = pstmt.executeQuery();
//			
//			
//			while(rs.next()) {
//				 String id = rs.getString("id");
//				 String pw = rs.getString("pw");
//				 String name = rs.getString("name");
//				 String phone = rs.getString("phone");
//				 String zipcode = rs.getString("zipcode");
//				 String addr1 = rs.getString("addr1");
//				 String addr2 = rs.getString("addr2");
//				 String email = rs.getString("email");
//				mDto = new MemberDTO(id, pw, name, phone, zipcode, addr1, addr2, email);
//			}
//			
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			DBManager.close(conn, pstmt, rs);
//		}
//		
//		return mDto;
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	public int updateMember(MemberDTO mDto) {
//		try {
//			conn = DBManager.getConnection();
//			String sql = "UPDATE SET member "
//					+ "pw = ?,"
//					+ "name = ?,"
//					+ "phone = ?,"
//					+ "zipcode = ?,"
//					+ "addr1 = ?,"
//					+ "addr2 = ?,"
//					+ "email = ?"
//					+ "WHERE id = ?";
//			
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, mDto.getPw());
//			pstmt.setString(2, mDto.getName());
//			pstmt.setString(3, mDto.getPhone());
//			pstmt.setString(4, mDto.getZipcode());
//			pstmt.setString(5, mDto.getAddr1());
//			pstmt.setString(6, mDto.getAddr2());
//			pstmt.setString(7, mDto.getEmail());
//			pstmt.setString(8, mDto.getId());
//			
//			result = pstmt.executeUpdate();
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			DBManager.close(conn, pstmt);
//		}
//		
//		
//		return result;
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	// Ajax를 활용한 ID중복체크
//	public String confirmID(String userid) {
//		String massage = "";
//		try {
//			conn = DBManager.getConnection();
//			String sql = "SELECT id FROM member "
//					+ "WHERE id = ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, userid);
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//				//중복된 아이디
//				massage = "-1";
//			}else {
//				massage = "1";
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			DBManager.close(conn, pstmt,rs);
//		}
//		
//		return massage;
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	// Ajax를 활용한 현재 비밀번호 체크
//		public String confirmPW(String id, String pw) {
//			String massage = "";
//			try {
//				conn = DBManager.getConnection();
//				String sql = "SELECT id FROM member "
//						+ "WHERE id = ? and pw = ?";
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, id);
//				pstmt.setString(2, pw);
//				rs = pstmt.executeQuery();
//				
//				if(rs.next()) {
//					//중복된 아이디
//					massage = "-1";
//				}else {
//					massage = "1";
//				}
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}finally {
//				DBManager.close(conn, pstmt,rs);
//			}
//			
//			return massage;
//		}
//	
//	
//	
//	
//		
//		
//		
//		
//		
//		
//		
//		public int updatePw(String userId, String userPw) {
//			try {
//				conn = DBManager.getConnection();
//				String sql = "UPDATE MEMBER SET "
//						+ "pw = ?"
//						+ "WHERE id = ?";
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, userPw);
//				pstmt.setString(2, userId);
//				result = pstmt.executeUpdate();
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}finally {
//				DBManager.close(conn, pstmt);
//			}
//			
//			return result;
//		}
//		
//	
//	
//	
//	
//	
//	
//	
//	======================================================================
	
	
}
