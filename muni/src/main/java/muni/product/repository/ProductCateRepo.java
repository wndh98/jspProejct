package muni.product.repository;

import muni.product.dto.ProductCateDto;

public interface ProductCateRepo {

	int insert(ProductCateDto pcd);

	String selctMaxId();

	int delete(String pcId);

}
