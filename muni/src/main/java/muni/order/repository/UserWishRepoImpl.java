package muni.order.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.order.dto.UserWishDto;

public class UserWishRepoImpl implements UserWishRepo{

	@Override
	public int insertWish(UserWishDto userWish) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("userWishns.insertWish", userWish);
		ss.close();
		return result;
	}

	@Override
	public UserWishDto selectWish(UserWishDto userWish) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		UserWishDto findWish = ss.selectOne("userWishns.selectWish", userWish);
		ss.close();
		return findWish;
	}

	@Override
	public List<UserWishDto> selectWishList(String userId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<UserWishDto> list = ss.selectOne("userWishns.selectWishList", userId);
		ss.close();
		return list;
	}
	
}
