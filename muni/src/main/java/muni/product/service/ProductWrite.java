package muni.product.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class ProductWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemDto pid = new ProductItemDto();
		ProductItemRepo pcr = new ProductItemRepoImpl();

		int piHit = 0;
		if(request.getParameter("piHit")!=null) {
			piHit=Integer.parseInt(request.getParameter("piHit"));
		}
		int piPoint = 0;
		if(request.getParameter("piPoint")!=null) {
			piHit=Integer.parseInt(request.getParameter("piPoint"));
		}
		pid.setPiPoint(piPoint);
		
		
		pid.setPcId("10");
		pid.setPiName(request.getParameter("piName"));
		pid.setPiCprice(Integer.parseInt(request.getParameter("piCprice")));
		pid.setPiPrice(Integer.parseInt(request.getParameter("piPrice")));
		pid.setPiSailPrice(Integer.parseInt(request.getParameter("piSailPrice")));
		pid.setPiDelivery(Integer.parseInt(request.getParameter("piDelivery")));
		pid.setPiCount(Integer.parseInt(request.getParameter("piCount")));
		pid.setPiContent(request.getParameter("piContent"));
		pid.setPiContent("123");
		pid.setPiFile1(request.getParameter("piFile1"));
		pid.setPiFile2(request.getParameter("piFile2"));
		pid.setPiFile3(request.getParameter("piFile3"));
		pid.setPiFile4(request.getParameter("piFile4"));
		pid.setPiFile5(request.getParameter("piFile5"));
		pid.setPiFile6(request.getParameter("piFile6"));
		pid.setPiFile7(request.getParameter("piFile7"));
		
		int result = pcr.insert(pid);
		request.setAttribute("result", result);
		return "/view/admin/product/productWrite.jsp";
	}

}
