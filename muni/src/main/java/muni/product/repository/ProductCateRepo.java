package muni.product.repository;

import java.util.List;

import muni.product.dto.ProductCateDto;

public interface ProductCateRepo {

	int insert(ProductCateDto pcd);

	int delete(String pcId);

	String selctMaxId(String pcId);
	
	List<ProductCateDto> selectList();

}
