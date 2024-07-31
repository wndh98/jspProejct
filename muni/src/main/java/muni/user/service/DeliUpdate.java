package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.user.dto.UserDeliveryDto;
import muni.user.repository.UserDeliveryRepo;
import muni.user.repository.UserDeliveryRepoImpl;

public class DeliUpdate implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserDeliveryRepo udr = new UserDeliveryRepoImpl();
		UserDeliveryDto ud = new UserDeliveryDto();
		int result = 0;
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		if (userId != null && !userId.equals("")) {
			int udNum =Integer.parseInt(request.getParameter("udNum"));
			String udSubject = request.getParameter("udSubject");
			String udName = request.getParameter("udName");
			String udAddressNum = request.getParameter("udAddressNum");
			String udAddress = request.getParameter("udAddress");
			String udAddressEtc = request.getParameter("udAddressEtc");
			String udTel = request.getParameter("udTel");
			String udPhone = request.getParameter("udPhone");
			ud.setUdNum(udNum);
			ud.setUserId(userId);
			ud.setUdSubject(udSubject);
			ud.setUdName(udName);
			ud.setUdAddressNum(udAddressNum);
			ud.setUdAddress(udAddress);
			ud.setUdAddressEtc(udAddressEtc);
			ud.setUdTel(udTel);
			ud.setUdPhone(udPhone);

			result = udr.update(ud);
		}
		request.setAttribute("result", result);

		return "/view/user/mypage/deliUpdate.jsp";
	}

}
