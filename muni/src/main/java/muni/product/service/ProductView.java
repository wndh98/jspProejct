package muni.product.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepoImpl;
import muni.board.repository.BoardRepo;
import muni.controller.CommandProcess;
import muni.paging.Pagination;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductView implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		ProductItemRepo pcr = new ProductItemRepoImpl();
		BoardRepo br = new BoardRVRepoImpl();
		
		int piNum = Integer.parseInt(request.getParameter("piNum"));
		ProductItemDto product = pcr.findById(piNum);
		int salePer = product.getPiPrice()*100/product.getPiCprice();
		int piPrice = product.getPiSailPrice()>0?product.getPiSailPrice():product.getPiPrice();
		int listCnt = br.findByAllCnt(piNum);
		Pagination pagination = new Pagination(1, listCnt);
		Map<String,Integer> map=new HashMap<String,Integer>();
		map.put("piNum", piNum);
		map.put("startIndex",pagination.getStartIndex());
		map.put("startIndex",pagination.getStartIndex());
		map.put("pageSize",pagination.getPageSize());
		List<BoardDto> list = br.selectList(map);
		request.setAttribute("list", list);
		request.setAttribute("pagination", pagination);
		request.setAttribute("product", product);
		request.setAttribute("piNum", piNum);
		request.setAttribute("piPrice", piPrice);
		request.setAttribute("salePer", salePer);
		return "/view/product/productView.jsp";
	}

}
