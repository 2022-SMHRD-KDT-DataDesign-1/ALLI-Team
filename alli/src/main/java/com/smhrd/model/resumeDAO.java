package com.smhrd.model;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class resumeDAO {

	// 세션을 생성해 줄 수 있는 factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	 public resumeVO resume_Print(int resume_num) {
		 SqlSession sqlSession = sqlSessionFactory.openSession(true); // true -> auto
		 resumeVO print_vo = sqlSession.selectOne("resume_Print",resume_num); 
		 sqlSession.close(); 
		 return print_vo; 
	 }
	 
	//기업게시판에 이력서미리보기
	 public List<resumeVO> selectListToEmp() {
		 SqlSession sqlSession = sqlSessionFactory.openSession(true);
		 List<resumeVO> rlist = sqlSession.selectList("selectListToEmp"); 
		 sqlSession.close(); 
		 return rlist; 
	 }
	 
	 // 유저 아이디로 이력서 찾아오는 기능
	 public List<resumeVO> selectResumeList(String id){
		 SqlSession sqlSession = sqlSessionFactory.openSession(true);
		 List<resumeVO> user_resume_list = sqlSession.selectList("select_userResumes",id);
		 sqlSession.close();
		 return user_resume_list ;
	 }

	public int deleteResume(BigDecimal deleteIndex) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("resumeDelete",deleteIndex);
		sqlSession.close();
		return cnt;
	}

	public int openUpdate(resumeVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.update("openUpdate",vo);
		sqlSession.close();
		return cnt;
	}

	public int closeUpdate(BigDecimal resume_num) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.update("closeUpdate",resume_num);
		sqlSession.close();
		return cnt;
	}

	
	 public int openUpdate2(resumeVO vo) { 
		SqlSession sqlSession = sqlSessionFactory.openSession(true); 
	 	int cnt2 = sqlSession.update("openUpdate2",vo);
	 	sqlSession.close();
		return cnt2;
	  
	}
	 

	
	
	

}
