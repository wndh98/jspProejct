package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class ProductCateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("pcId", request.getParameter("pcId"));
		return "/view/admin/product/cateForm.jsp";
	}
	
	/* return "/view/admin/product/cateForm.jsp"; */
}
