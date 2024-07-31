package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRVRepo;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;

public class WriteRVAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		// 화면에서 데이터 받기
		String bSubject = request.getParameter("bSubject");
		String bContent = request.getParameter("bContent");
		int bStar = Integer.parseInt(request.getParameter("bStar"));
		int bScreate = Integer.parseInt(request.getParameter("bScreate"));
		// DTO에 데이터 채우기
		BoardDto board = new BoardDto();
		board.setbSubject(bSubject);
		board.setbContent(bContent);
		board.setbStar(bStar);
		board.setbScreate(bScreate);
		// Dao에 데이터 입력 요청
		BoardRVRepo brvr = new BoardRVRepoImpl();
		int result = brvr.insert(board);
		// 결과를 jsp에 전달하기
		request.setAttribute("result", result);
		return "/view/board/writeRV.jsp";
	}

}
