package muni.product;

import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.order.dto.OrderCartDto;
import muni.order.repository.OrderCartRepo;
import muni.order.repository.OrderCartRepoImpl;
import muni.product.dto.ProductItemDto;
import muni.product.repository.ProductItemRepo;
import muni.product.repository.ProductItemRepoImpl;

public class CartPickup implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		ProductItemRepo pir = new ProductItemRepoImpl();
		OrderCartRepo ocr = new OrderCartRepoImpl();
		String ocId = request.getParameter("ocId");
		int piNum = Integer.parseInt(request.getParameter("piNum"));
		int ocCount = Integer.parseInt(request.getParameter("piCount"));

		int result = 0;
		if (ocId == null || ocId.equals("")) {
			UUID uuid = UUID.randomUUID();
			ocId = uuid.toString();
		} else {

			
			OrderCartDto dupCart = new OrderCartDto();
			dupCart.setOcId(ocId);
			dupCart.setPiNum(piNum);
			int dup = ocr.duplicateCheck(dupCart);
			if (dup > 0) {
				request.setAttribute("result", result);
				return "/view/order/cartPickup.jsp";
			}
		}

		ProductItemDto findPi = pir.findById(piNum);

		if (findPi != null) {

			int ocPrice = findPi.getPiSailPrice() > 0 ? findPi.getPiSailPrice() : findPi.getPiPrice();
			OrderCartDto cart = new OrderCartDto();
			cart.setOcId(ocId);
			cart.setPiNum(piNum);
			cart.setOcCount(ocCount);
			cart.setOcPrice(ocPrice);

			result = ocr.save(cart);
			request.setAttribute("ocId", ocId);
		}
		request.setAttribute("result", result);
		return "/view/order/cartPickup.jsp";
	}
}
