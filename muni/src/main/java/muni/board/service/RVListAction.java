package muni.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class RVListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		BoardRVRepo brvr = new BoardRVRepoImpl();
		List<BoardDto> list = brvr.selectList();
		request.setAttribute("list", list);
		return "/view/board/RVList.jsp";
	}

}
