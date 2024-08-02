package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class ReviewContent implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 화면에서 데이터 받기
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		int bNum = Integer.parseInt(request.getParameter("bNum"));
		BoardRVRepo brvr = new BoardRVRepoImpl();
		brvr.updateCount(bNum);
		BoardDto board = brvr.select(bNum);
		BoardDto preBoard = brvr.select(bNum+1);
		BoardDto afterBoard = brvr.select(bNum-1);
		request.setAttribute("board", board);
		request.setAttribute("preBoard", preBoard);
		request.setAttribute("afterBoard", afterBoard);

		return "/view/board/contentRV.jsp";
	}

}
