package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class ContentAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 화면에서 데이터 받기
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		String bSubject = request.getParameter("bSubject");
		String bContent = request.getParameter("bContent");
		int bStar = Integer.parseInt(request.getParameter("bStar"));
		BoardRVRepo brvr = new BoardRVRepoImpl();
		BoardDto boardDto = brvr.select(bNum);


		return "/view/board/contentRV.jsp";
	}

}
