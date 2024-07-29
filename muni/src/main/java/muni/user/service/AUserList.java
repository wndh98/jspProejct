package muni.user.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;
import muni.paging.Pagination;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class AUserList implements CommandProcess{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		
		int listCnt = ur.findByAllCnt();
		
		Pagination pagination = new Pagination(curPage,listCnt);
		UserDto user = new UserDto();
		
		List<UserDto> userList = ur.selectUserList(pagination);
		request.setAttribute("userList",userList);
		request.setAttribute("pagination", pagination);
		System.out.println(pagination);
		return "/view/admin/user/userList.jsp";
	}

}
