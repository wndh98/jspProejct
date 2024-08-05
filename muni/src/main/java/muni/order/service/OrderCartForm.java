package muni.order.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.paging.Pagination;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class OrderCartForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemRepo pir = new ProductItemRepoImpl();
		int curPage = 1;
		String pcurPage = request.getParameter("curPage");
		if (pcurPage != null && pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		int cnt = pir.findByAllCnt();

		Pagination pagination = new Pagination(curPage, cnt);
		List<ProductItemDto> list = pir.selectList(pagination);

		request.setAttribute("list", list);
		request.setAttribute("pagination", pagination);
		request.setAttribute("curPage", curPage);
		return "/view/order/cart.jsp";

	}
}