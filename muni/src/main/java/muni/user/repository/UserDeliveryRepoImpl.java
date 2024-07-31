package muni.user.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.user.dto.UserDeliveryDto;

public class UserDeliveryRepoImpl implements UserDeliveryRepo{
	
	@Override
	public List<UserDeliveryDto> deliList(String userId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<UserDeliveryDto> deliList = ss.selectList("userDelins.selectList",userId);
		ss.close();
		return deliList;
	}

	@Override
	public int insert(UserDeliveryDto ud) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("userDelins.insert",ud);
		ss.close();
		return result;
	}

	@Override
	public UserDeliveryDto findById(int udNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		UserDeliveryDto deli = ss.selectOne("userDelins.findById",udNum);
		ss.close();
		return deli;
	}

	@Override
	public int update(UserDeliveryDto ud) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("userDelins.update",ud);
		ss.close();
		return result;
	}
	
	
	
}
