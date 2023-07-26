package com.StepStyle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StepStyle.dao.UserDAO;
import com.StepStyle.vo.UserVO;



@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public UserVO selectUserByLogin(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.selectUserByLogin(vo);
	}

	@Override
	public int selectCntById(String uId) {
		// TODO Auto-generated method stub
		return userDAO.selectCntById(uId);
	}

	@Override
	public int insert(UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.insert(vo);
	}
	
	

	
}
