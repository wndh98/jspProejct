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

		String pcId = pcr.selctMaxId();
		pcId = Integer.toString(Integer.parseInt(pcId) + 10);
		pcd.setPcId(pcId);//
		// product_cate 2자리수 인 값을 찾아서 제일 높읖값 + 10
		
		pcd.setPcName(pcName);
		int result = pcr.insert(pcd);
		request.setAttribute("result", result);
		return "/view/admin/productCateWrite.do";
	}

}
