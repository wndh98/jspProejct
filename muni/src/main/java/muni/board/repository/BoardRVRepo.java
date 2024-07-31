package muni.board.repository;

import java.util.List;

import muni.board.dto.BoardDto;

public interface BoardRVRepo {
	List<BoardDto> selectList();

	int insert(BoardDto boardDto);

	BoardDto select(int bNum);

	int update(BoardDto board);

}
