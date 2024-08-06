package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductCateDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductCateRepo pcr = new ProductCateRepoImpl();
		ProductItemRepo pir = new ProductItemRepoImpl();
		int result=0;
		String pcId = request.getParameter("pcId");
//		10
//			1010
//			1020
//				102010
//				102020
//			
//		20
//		30
//		Product Cate table
//		10  상의
//		20  하의
//		30  신발
//		
//		Product Item table
//		num 
//		1 옷      10
//		2 바지     20
//		3 반바지   20
//		4 반팔    10
//		5 신발    30
//		select * from 테이블명 where 조건
//		2 == select count(*) from Product_Item where pc_id=#{pcId};
		
		String maxPcId = pcr.selctMaxId(pcId);

		if(maxPcId!=null) {
			request.setAttribute("result", result);
		}else if(0!=pir.findCateCount(pcId)) {
			result=-1;
			request.setAttribute("result", result);
		} else {
			result = pcr.delete(pcId);
			request.setAttribute("result", result);
			
		}
//		해당 카테고리에 상품이 없어야함
		
		
		return "/view/admin/product/productCateDelete.jsp";
	}

}
