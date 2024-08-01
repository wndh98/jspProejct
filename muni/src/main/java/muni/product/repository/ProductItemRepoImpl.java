package muni.product.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;
import muni.paging.Pagination;
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
	public int delete(int piNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.delete("products.piDelete", piNum);
		ss.close();
		return result;
	}

	@Override
	public int findByAllCnt() {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("products.findByAllCnt");
		ss.close();
		return result;
	}

	@Override
	public List<ProductItemDto> selectList(Pagination pagination) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<ProductItemDto> list = ss.selectList("products.piselectList", pagination);
		ss.close();
		return list;
	}

	@Override
	public ProductItemDto findById(int piNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		ProductItemDto product = ss.selectOne("products.findById", piNum);
		ss.close();
		return product;
	}

	@Override
	public int update(ProductItemDto pid) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("products.piUpdate", pid);
		ss.close();
		return result;
	}


}
