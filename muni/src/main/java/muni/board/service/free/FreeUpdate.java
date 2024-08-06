package muni.board.service.free;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRepo;
import muni.board.repository.FreeRepoImpl;
import muni.controller.CommandProcess;

public class FreeUpdate implements CommandProcess {

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
//		int bStar = Integer.parseInt(request.getParameter("bStar"));
		int bNum = Integer.parseInt(request.getParameter("bNum"));

		BoardDto board = new BoardDto();
		board.setbNum(bNum);
		board.setbSubject(bSubject);
		board.setbContent(bContent);
//		board.setbStar(bStar);

		BoardRepo brvr = new FreeRepoImpl();
		int result = brvr.update(board);
		request.setAttribute("result", result);
		
		return "/view/board/boardUpdate.jsp";
	}

}
