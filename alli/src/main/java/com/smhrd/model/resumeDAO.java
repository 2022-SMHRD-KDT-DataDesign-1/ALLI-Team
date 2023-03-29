package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class resumeDAO {

	// 세션을 생성해 줄 수 있는 factory 생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	 public resumeVO resume_Print(String user_id) {
		 SqlSession sqlSession = sqlSessionFactory.openSession(true); // true -> auto
		 resumeVO print_vo = sqlSession.selectOne("resume_Print",user_id); 
		 sqlSession.close(); 
		 return print_vo; 
	 }

	

}
