package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemRepo pir = new ProductItemRepoImpl();
		String curPage = request.getParameter("curPage");
		int result = 0;
		int piNum = Integer.parseInt(request.getParameter("piNum"));
		result = pir.delete(piNum);
		request.setAttribute("result", result);
		request.setAttribute("curPage", curPage);
		return "/view/admin/product/productDelete.jsp";
	}

}
