package muni.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class UserIdSearch implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		UserDto user = new UserDto();
		user.setUserName(userName);
		user.setUserEmail(userEmail);
		List<UserDto> findUsers = ur.searchUserId(user);
		request.setAttribute("findUsers", findUsers);
		request.setAttribute("userName", userName);
		request.setAttribute("userEmail", userEmail);
		
		return "/view/user/userIdSearch.jsp";
	}
}
