package muni.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class UserPwSearch implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();

		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		String userPassword = request.getParameter("userPassword");
		UserDto user = new UserDto();
		user.setUserId(userId);
		user.setUserName(userName);
		user.setUserEmail(userEmail);
		user.setUserPassword(userPassword);
		int result = 0;
		result = ur.changePw(user);
		request.setAttribute("result", result);
		return "/view/user/userPwSearch.jsp";
	}
}
