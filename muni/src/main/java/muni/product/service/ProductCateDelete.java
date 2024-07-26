package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;

public class ProductCateDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductCateRepo pcr = new ProductCateRepoImpl();

		String pcId = request.getParameter("pcId");
		int result = pcr.delete(pcId);
		
		request.setAttribute("result", result);
		return "/view/admin/productCateDelete.jsp";
	}

}
