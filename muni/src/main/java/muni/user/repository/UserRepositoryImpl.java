package muni.user.repository;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.user.dto.UserDto;

public class UserRepositoryImpl implements UserRepository {

	@Override
	public int save(UserDto user) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("userns.insert", user);
		ss.close();
		return result;
	}

	@Override
	public UserDto findById(String userId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		UserDto user = ss.selectOne("userns.findById", userId);
		ss.close();
		return user;
	}

	@Override
	public UserDto loginFindById(String userId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		UserDto user = ss.selectOne("userns.loginFindById", userId);
		ss.close();
		return user;
	}

	@Override
	public UserDto findByCoNum(String userCoNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		UserDto user = ss.selectOne("userns.findByCoNum", userCoNum);
		ss.close();
		return user;
		
	}

}





