package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductView implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		ProductItemRepo pcr = new ProductItemRepoImpl();
		int piNum = Integer.parseInt(request.getParameter("piNum"));
		ProductItemDto product = pcr.findById(piNum);
		request.setAttribute("product", product);
		request.setAttribute("piNum", piNum);
		return "/view/product/productView.jsp";
	}

}
