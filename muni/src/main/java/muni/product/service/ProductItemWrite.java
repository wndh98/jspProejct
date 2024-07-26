package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductItemWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemRepo pir= new ProductItemRepoImpl();
		
		String pcName = request.getParameter("pcName");
		ProductItemDto pid = new ProductItemDto();
		
		
		pid.setPcId(pcName);
		int result = pir.insert(pid);
		request.setAttribute("result", result);
		return "/view/admin/productItemWrite.do";
	}

}
