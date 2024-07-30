package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.user.dto.UserDeliveryDto;
import muni.user.repository.UserDeliveryRepo;
import muni.user.repository.UserDeliveryRepoImpl;

public class DeliUpdateForm implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserDeliveryRepo udr = new UserDeliveryRepoImpl();
		if(!request.getParameter("udNum").equals("") && request.getParameter("udNum")!=null) {
			int udNum = Integer.parseInt(request.getParameter("udNum"));
			UserDeliveryDto deli = udr.findById(udNum);
			request.setAttribute("deli", deli);
		}
		return "/view/user/mypage/deliUpdateForm.jsp";
	}

}
