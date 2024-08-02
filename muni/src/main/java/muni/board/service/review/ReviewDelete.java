package muni.board.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.repository.BoardRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class ReviewDelete implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		BoardRepo brr = new BoardRVRepoImpl();
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		int bNum=0;
		if(!request.getParameter("bNum").equals("") && request.getParameter("bNum")!=null) {
			bNum=Integer.parseInt(request.getParameter("bNum"));
		}
		int result =0;
		result = brr.delete(bNum);
		request.setAttribute("result", result);
		return "/view/board/boardDelete.jsp";
	}
}
