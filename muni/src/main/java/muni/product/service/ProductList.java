package muni.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;


public class ProductList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemRepo pir = new ProductItemRepoImpl();
		List<ProductItemDto> list = pir.selectList();
		request.setAttribute("list", list);
		return "/view/admin/product/productList.jsp";
	}

}
