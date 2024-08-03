package muni.board.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.board.dto.BoardDto;
import muni.mybatis.MybatisSqlSessionFactory;
import muni.paging.Pagination;

public class FreeRepoImpl implements BoardRepo{

	@Override
	public List<BoardDto> selectList(Pagination pagination) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<BoardDto> result = ss.selectList("freens.selectList",pagination);
		ss.close();
		return result;
	}

	public int insert(BoardDto board) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("freens.insert", board);
		ss.close();
		return result;
	}

	@Override
	public BoardDto select(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		BoardDto result = ss.selectOne("freens.select", bNum);
		ss.close();
		return result;
	}

	@Override
	public int update(BoardDto board) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("freens.update", board);
		ss.close();
		return result;
	}

	@Override
	public int findByAllCnt() {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("noticens.findByAllCnt");
		ss.close();
		return result;
	}

	@Override
	public int delete(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.delete("freens.delete",bNum);
		ss.close();
		return result;
	}

	@Override
	public void updateCount(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		ss.update("freens.updateCount",bNum);
		ss.close();
		
	}

}
