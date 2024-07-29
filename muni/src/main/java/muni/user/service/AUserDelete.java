package muni.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class AUserDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		String[] delList = request.getParameterValues("delList");
		int result = 1;
		if (delList != null) {
			for (String userId : delList) {
				if (ur.userDelete(userId) != 1) {
					result = 0;
					break;
				}
			}
		}else {
			result=0;
		}
		request.setAttribute("result", result);
		request.setAttribute("curPage", request.getParameter("curPage"));
		return "/view/admin/user/userDelete.jsp";
	}

}
