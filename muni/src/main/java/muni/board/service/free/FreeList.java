package muni.board.service.free;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRepo;
import muni.board.repository.FreeRepoImpl;
import muni.controller.CommandProcess;
import muni.paging.Pagination;

public class FreeList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		BoardRepo brvr = new FreeRepoImpl();
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		int listCnt = brvr.findByAllCnt();
		
		Pagination pagination = new Pagination(curPage,listCnt);
		
		
		List<BoardDto> list = brvr.selectList(pagination);
		request.setAttribute("list", list);
		request.setAttribute("pagination", pagination);
		request.setAttribute("title", "자유게시판");
		return "/view/board/boardList.jsp";
	}

}
