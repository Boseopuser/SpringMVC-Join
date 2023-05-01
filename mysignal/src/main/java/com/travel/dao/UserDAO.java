package com.travel.dao;

import com.travel.domain.UserVO;

public interface UserDAO {
	
	// 회원가입
	public void register(UserVO vo) throws Exception;
	
	// 로그인
	public UserVO login(UserVO vo) throws Exception;

}
