package muni.order.repository;


import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.order.dto.OrderCartDto;

public class OrderCartRepoImpl implements OrderCartRepo {

	@Override
	public int save(OrderCartDto cart) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("orderCartns.save", cart);
		ss.close();
		return result;
	}

	@Override
	public int duplicateCheck(OrderCartDto dupCart) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("orderCartns.duplicateCheck", dupCart);
		ss.close();
		return result;
	}

}
