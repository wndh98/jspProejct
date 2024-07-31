package muni.product.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.product.dto.ProductItemDto;

public class ProductItemRepoImpl implements ProductItemRepo {

	@Override
	public int insert(ProductItemDto pid) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("products.piInsert", pid);
		ss.close();
		return result;
	}

	@Override
	public int findCateCount(String pcId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("products.findCateCount", pcId);
		ss.close();
		return result;
	}

	@Override
	public List<ProductItemDto> selectList() {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<ProductItemDto> list = ss.selectList("products.piselectList");
		ss.close();
		return list;
	}

}
