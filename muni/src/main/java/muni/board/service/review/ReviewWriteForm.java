package muni.board.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class ReviewWriteForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("piNum", request.getParameter("piNum"));
		request.setAttribute("curPage", curPage);
		request.setAttribute("title", "상품 사용후기");
		return "/view/board/boardWriteForm.jsp";
	}

}