package muni.product.repository;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.product.dto.ProductCateDto;

public class ProductCateRepoImpl implements ProductCateRepo {

	@Override
	public int insert(ProductCateDto pcd) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("products.pcInsert", pcd);
		ss.close();
		return result;
	}

	@Override
	public String selctMaxId() {
		return null;
	}

	@Override
	public int delete(String pcId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.delete("products.pcDelete", pcId);
		ss.close();
		return result;
	}

}
