package muni.product.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;

public class ProductCateUpdate implements CommandProcess{

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductCateRepo pcr = new ProductCateRepoImpl();
		String pcId= request.getParameter("pcId");
		ProductCateDto productCate = pcr.findById(pcId);
		productCate.setPcName(request.getParameter("pcName"));
		int result = pcr.update(productCate);
		request.setAttribute("result", result);
		return "/view/admin/product/productCateUpdate.jsp";
	}

}
