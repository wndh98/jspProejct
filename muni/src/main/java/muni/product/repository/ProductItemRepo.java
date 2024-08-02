package muni.product.repository;

import java.util.List;

import muni.paging.Pagination;
import muni.product.dto.ProductItemDto;

public interface ProductItemRepo {

	int insert(ProductItemDto pid);

	int findCateCount(String pcId);

	List<ProductItemDto> selectList(Pagination pagination);

	ProductItemDto findById(int piNum);

	int delete(int piNum);

	int findByAllCnt();

	int update(ProductItemDto pid);



}
