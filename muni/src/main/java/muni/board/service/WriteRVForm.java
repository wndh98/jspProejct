package muni.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import muni.controller.CommandProcess;

public class WriteRVForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		return "/view/board/writeRVForm.jsp";
	}

}