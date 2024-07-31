package muni.product.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public String selctMaxId(String pcId) {
		int len = pcId.length() + 2;
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pcId", pcId);
		map.put("len", len);
		String result = ss.selectOne("products.pcselctMaxId", map);
		ss.close();
		return result;
	}

	@Override
	public int delete(String pcId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.delete("products.pcDelete", pcId);
		ss.close();
		return result;
	}

	@Override
	public List<ProductCateDto> selectList() {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<ProductCateDto> result = ss.selectList("products.pcselectList");
		ss.close();
		return result;
	}

	@Override
	public int update(ProductCateDto productCate) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("products.pcUpdate", productCate);
		ss.close();
		return result;
	}

	@Override
	public ProductCateDto findById(String pcId) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		ProductCateDto productCate = ss.selectOne("products.pcselect", pcId);
		ss.close();
		return productCate;
	}

}
