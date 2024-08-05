package muni.order.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.order.dto.UserWishDto;
import muni.order.repository.UserWishRepo;
import muni.order.repository.UserWishRepoImpl;

public class UserWishList implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserWishRepo usr = new UserWishRepoImpl();
		List<UserWishDto> list;
		HttpSession session = request.getSession();
		String userId= (String)session.getAttribute("userId");
		list = usr.selectWishList(userId);
		
		request.setAttribute("list", list);
		
		
		
		return "/view/user/mypage/userWishList.jsp";
	}
}
