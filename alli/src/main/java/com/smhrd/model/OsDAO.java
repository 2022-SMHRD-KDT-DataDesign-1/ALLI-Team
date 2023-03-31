package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class OsDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 기술 가져오기
	public List<OsVO> selectOs() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<OsVO> list = session.selectList("selectOs");
		session.close();
		return list;
	}
}