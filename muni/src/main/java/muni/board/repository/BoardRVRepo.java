package muni.board.repository;

import java.util.List;

import muni.board.dto.BoardDto;
import muni.paging.Pagination;

public interface BoardRVRepo {
	List<BoardDto> selectList(Pagination pagination);

	int insert(BoardDto boardDto);

	BoardDto select(int bNum);

	int update(BoardDto board);

	int findByAllCnt();

	int delete(int bNum);

	void updateCount(int bNum);

}
