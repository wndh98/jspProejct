package muni.board.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class ReviewUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		int bNum=0;
		if(!request.getParameter("bNum").equals("") && request.getParameter("bNum")!=null) {
			bNum=Integer.parseInt(request.getParameter("bNum"));
		}
		BoardRepo brr = new BoardRVRepoImpl();
		BoardDto board = brr.select(bNum);
		request.setAttribute("board", board);
		request.setAttribute("curPage", curPage);
		return "/view/board/boardUpdateForm.jsp";
	}

}
