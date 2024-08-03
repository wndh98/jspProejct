package muni.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;

public class ProductCateList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductCateRepo pcr = new ProductCateRepoImpl();
		List<ProductCateDto> list= pcr.selectList();
		request.setAttribute("list", list);
		return "/view/admin/product/cateList.jsp";
	}

}
