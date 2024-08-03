package muni.product.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductCateDto;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductCateRepo;
import muni.product.repository.ProductCateRepoImpl;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int curPage=1;
		String pcurPage = request.getParameter("curPage");
		if(pcurPage!=null && pcurPage.equals("")) {
			curPage=Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		ProductItemRepo pir = new ProductItemRepoImpl();
		ProductCateRepo pcr = new ProductCateRepoImpl();
		List<ProductCateDto> list = pcr.selectList();
		int piNum = Integer.parseInt(request.getParameter("piNum"));
		ProductItemDto product = pir.findById(piNum);
		request.setAttribute("product", product);
		request.setAttribute("list", list);
		return "/view/admin/product/productUpdateForm.jsp";
	}
}
