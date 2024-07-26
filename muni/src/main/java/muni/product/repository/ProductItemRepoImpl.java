package muni.product.repository;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.product.dto.ProductItemDto;

public class ProductItemRepoImpl implements ProductItemRepo{

	@Override
	public int insert(ProductItemDto pid) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("products.piInsert", pid);
		ss.close();
		return result;
	}

}
