package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;

public class ProductCateUpdateForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String pcId= request.getParameter("pcId");
		ProductCateRepo pcr = new ProductCateRepoImpl();
		ProductCateDto productCate = pcr.findById(pcId);
		
		request.setAttribute("productCate", productCate);
		return "/view/admin/product/productCateUpdateForm.jsp";
	}
}
