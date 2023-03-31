package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class jjimDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public List<jjimVO> selectjjim() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<jjimVO> list = session.selectList("selectjjim");
		session.close();
		return list;
	}
}
