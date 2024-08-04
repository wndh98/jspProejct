package muni.order.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.order.dto.UserWishDto;
import muni.order.repository.UserWishRepo;
import muni.order.repository.UserWishRepoImpl;

public class InsertWish implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		UserWishRepo uwr = new UserWishRepoImpl();
		HttpSession session = request.getSession();
		int result=0;
		String userId=(String)session.getAttribute("userId");
		int piNum = Integer.parseInt(request.getParameter("piNum"));
		UserWishDto userWish = new UserWishDto();
		userWish.setPiNum(piNum);
		userWish.setUserId(userId);
		System.out.println(userWish);
		UserWishDto findWish = uwr.selectWish(userWish);
		if(findWish==null && userId!=null && !userId.equals(""))
		result = uwr.insertWish(userWish);
		request.setAttribute("result", result);
		
		return "/view/order/insertWish.jsp";
	}

}
