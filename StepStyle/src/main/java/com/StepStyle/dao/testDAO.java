package com.StepStyle.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.StepStyle.vo.testVO;

@Repository
public class testDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public testVO selectOneBynoticeNo(int noticeNo) {
		return sqlSession.selectOne("com.StepStyle.mapper.boardMapper.selectOneBynoticeNo",noticeNo);
	}
}
