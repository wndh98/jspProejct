package muni.user.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.paging.Pagination;
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

	@Override
	public int findByAllCnt() {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("userns.findByAllCnt");
		ss.close();
		return result;
	}

	@Override
	public List<UserDto> selectUserList(Pagination pagination) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<UserDto> list = ss.selectList("userns.selectUserList",pagination);
		ss.close();
		return list;
	}

	@Override
	public int userUpdate(UserDto user) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("userns.userUpdate",user);
		ss.close();
		return result;
	}

	@Override
	public int userDelete(String userId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("userns.userDelete",userId);
		ss.close();
		return result;
	}

	@Override
	public List<UserDto> searchUserId(UserDto user) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<UserDto> list = ss.selectList("userns.searchUserId",user);
		ss.close();
		return list;
	}

	@Override
	public int changePw(UserDto user) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("userns.changePw",user);
		ss.close();
		return result;
	}

}





