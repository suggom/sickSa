package sickSa.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import sickSa.domain.QueueLog;

public class QueueLogDaoImpl implements QueueLogDao {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void insert(QueueLog queueLog) {
		sqlSession.insert("insert", queueLog);
	}

	@Override
	public Integer getStateCount(Integer qstd_id) {
		int res = sqlSession.selectOne("selectNumber", qstd_id);
		System.out.println(res);
		return res;
	}
}