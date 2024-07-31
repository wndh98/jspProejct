package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class JoinForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("userSnsAgree", request.getParameter("snsAgree"));
		request.setAttribute("userEmailAgree", request.getParameter("emailAgree"));
		String[] rAgree = request.getParameterValues("rAgree");
		for(String agree : rAgree) {
			if(!agree.equals("1")) {
				request.setAttribute("notAgree", 1);
				break;
			}
		}
		return "/view/user/joinForm.jsp";
	}

}
