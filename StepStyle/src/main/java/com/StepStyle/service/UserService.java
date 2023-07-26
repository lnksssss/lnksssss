package com.StepStyle.service;

import com.StepStyle.vo.UserVO;

public interface UserService {
	
	UserVO selectUserByLogin(UserVO vo);
	int selectCntById(String uId);
	int insert(UserVO vo);
}
