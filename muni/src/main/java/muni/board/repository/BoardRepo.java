package muni.board.repository;

import java.util.List;
import java.util.Map;

import muni.board.dto.BoardDto;
import muni.paging.Pagination;

public interface BoardRepo {
	List<BoardDto> selectList(Pagination pagination);

	int insert(BoardDto boardDto);

	BoardDto select(int bNum);

	int update(BoardDto board);

	int findByAllCnt(int piNum);

	int delete(int bNum);

	void updateCount(int bNum);

	List<BoardDto> selectList(Map<String,Integer> map);
}
