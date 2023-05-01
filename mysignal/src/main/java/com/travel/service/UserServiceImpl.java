package com.travel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.travel.dao.UserDAO;
import com.travel.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserDAO dao;

	// 회원가입
	@Override
	public void register(UserVO vo) throws Exception {
		dao.register(vo);

	}
	
	// 로그인
	@Override
	public UserVO login(UserVO vo) throws Exception {
	    return dao.login(vo);
	} 

}
