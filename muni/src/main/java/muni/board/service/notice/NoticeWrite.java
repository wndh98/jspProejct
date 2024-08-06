package muni.board.service.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.board.dto.BoardDto;
import muni.board.repository.BoardRepo;
import muni.board.repository.NoticeRepoImpl;
import muni.board.repository.BoardRVRepoImpl;
import muni.controller.CommandProcess;
import muni.user.dto.UserDto;
import muni.user.repository.UserRepository;
import muni.user.repository.UserRepositoryImpl;

public class NoticeWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserRepository ur = new UserRepositoryImpl();
		int curPage=1;
		String pcurPage=request.getParameter("curPage");
		if(pcurPage!=null && !pcurPage.equals("")) {
			curPage = Integer.parseInt(pcurPage);
		}
		request.setAttribute("curPage", curPage);
		String userId = (String) request.getAttribute("userId");
		int result = 0;
		if (userId != null && !userId.equals("")) {
			UserDto user = ur.findById(userId);
			// 화면에서 데이터 받기
			String bSubject = request.getParameter("bSubject");
			String bContent = request.getParameter("bContent");
//			int bStar = Integer.parseInt(request.getParameter("bStar"));
			
			
			// DTO에 데이터 채우기
			BoardDto board = new BoardDto();
			
			board.setUserId(user.getUserId());
			board.setbWriter(user.getUserName());
			board.setbSubject(bSubject);
			board.setbContent(bContent);
//			board.setbStar(bStar);
			// Dao에 데이터 입력 요청
			BoardRepo brvr = new NoticeRepoImpl();
			result = brvr.insert(board);
			// 결과를 jsp에 전달하기
		}
		request.setAttribute("result", result);
		return "/view/board/boardWrite.jsp";
	}

}
