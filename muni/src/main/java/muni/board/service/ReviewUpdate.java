package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class ReviewUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		String bSubject = request.getParameter("bSubject");
		String bContent = request.getParameter("bContent");
		int bStar = Integer.parseInt(request.getParameter("bStar"));
		int bScreate = Integer.parseInt(request.getParameter("bScreate"));

		BoardDto board = new BoardDto();
		board.setbSubject(bSubject);
		board.setbContent(bContent);
		board.setbStar(bStar);

		BoardRVRepo brvr = new BoardRVRepoImpl();
		int result = brvr.update(board);
		request.setAttribute("result", result);
		
		return "/view/board/updateRV.jsp";
	}

}
