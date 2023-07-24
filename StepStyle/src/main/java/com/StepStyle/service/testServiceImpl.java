package com.StepStyle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StepStyle.dao.testDAO;
import com.StepStyle.vo.testVO;


@Service
public class testServiceImpl implements testService {
	
	@Autowired
	private testDAO testDAO;

	@Override
	public testVO selectOneBynoticeNo(int noticeNo) {
		return testDAO.selectOneBynoticeNo(noticeNo);
	}

}
