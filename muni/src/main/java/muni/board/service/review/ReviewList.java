package muni.board.service.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;
import muni.paging.Pagination;

public class ReviewList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		BoardRepo brvr = new BoardRVRepoImpl();
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		int listCnt = brvr.findByAllCnt(0);
		
		Pagination pagination = new Pagination(curPage,listCnt);
		
		
		List<BoardDto> list = brvr.selectList(pagination);
		request.setAttribute("list", list);
		request.setAttribute("pagination", pagination);
		request.setAttribute("title", "상품 사용후기");
		return "/view/board/boardList.jsp";
	}

}
