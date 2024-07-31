package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class UpdateRVAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String bSubject = request.getParameter("bSubject");
		String bContent = request.getParameter("bContent");
		int bStar = Integer.parseInt(request.getParameter("bStar"));
		int bScreate = Integer.parseInt(request.getParameter("bScreate"));

		BoardDto board = new BoardDto();
		board.setbSubject(bSubject);
		board.setbContent(bContent);
		board.setbStar(bStar);
		board.setbScreate(bScreate);

		BoardRVRepo brvr = new BoardRVRepoImpl();
		int result = brvr.update(board);
		request.setAttribute("result", result);
		
		return "/view/board/updateRV.jsp";
	}

}
