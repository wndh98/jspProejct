package muni.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.user.dto.UserDeliveryDto;
import muni.user.repository.UserDeliveryRepo;
import muni.user.repository.UserDeliveryRepoImpl;

public class DeliList implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserDeliveryRepo udr = new UserDeliveryRepoImpl();
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		List<UserDeliveryDto> deliList = udr.deliList(userId);
		request.setAttribute("deliList", deliList);
		
		
		return "/view/user/mypage/deliList.jsp";
	}

}
