package muni.product.repository;

import java.util.List;

import muni.product.dto.ProductItemDto;

public interface ProductItemRepo {

int insert(ProductItemDto pid);

int findCateCount(String pcId);

List<ProductItemDto> selectList();

}
