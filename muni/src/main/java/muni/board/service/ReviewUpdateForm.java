package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class ReviewUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		return "/view/board/updateRVForm.jsp";
	}

}
