package com.travel.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.travel.domain.UserVO;

@Service
public class UserDAOImpl implements UserDAO {

	// 마이바티스
	@Inject
	private SqlSession sql;

	// Mapper
	private static String namespace = "com.travel.mappers.UserMapper";

	// 회원가입
	@Override
	public void register(UserVO vo) throws Exception {
		System.out.println("birthData: " + vo.getBirthdate());
		
		sql.insert(namespace + ".register", vo);

	}
	// 로그인
	@Override
	public UserVO login(UserVO vo) throws Exception {
	    return sql.selectOne(namespace + ".login" , vo);
	}

}
