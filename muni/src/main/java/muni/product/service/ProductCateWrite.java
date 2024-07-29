package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;

public class ProductCateWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductCateRepo pcr = new ProductCateRepoImpl();

		String pcName = request.getParameter("pcName");
		ProductCateDto pcd = new ProductCateDto();

		String pcId = pcr.selctMaxId(request.getParameter("pcId"));
		if (pcId == null) {
			pcId = request.getParameter("pcId") + "10";
		} else {
			pcId = Integer.toString(Integer.parseInt(pcId) + 10);
		}
		pcd.setPcId(pcId);
		pcd.setPcName(pcName);
		int result = pcr.insert(pcd);
		request.setAttribute("result", result);
		return "/view/admin/product/productCateWrite.jsp";
	}

}
