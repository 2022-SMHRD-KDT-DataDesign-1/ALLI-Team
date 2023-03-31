package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class FrameworkDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 기술 가져오기
	public List<FrameworkVO> selectFramework() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<FrameworkVO> list = session.selectList("selectFramework");
		session.close();
		return list;
	}
}
