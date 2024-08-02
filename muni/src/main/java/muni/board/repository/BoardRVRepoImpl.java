package muni.board.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import muni.board.dto.BoardDto;
import muni.mybatis.MybatisSqlSessionFactory;
import muni.paging.Pagination;

public class BoardRVRepoImpl implements BoardRepo {

	@Override
	public List<BoardDto> selectList(Pagination pagination) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<BoardDto> result = ss.selectList("reviewns.selectList",pagination);
		ss.close();
		return result;
	}

	public int insert(BoardDto board) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("reviewns.insert", board);
		ss.close();
		return result;
	}

	@Override
	public BoardDto select(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		BoardDto result = ss.selectOne("reviewns.select", bNum);
		ss.close();
		return result;
	}

	@Override
	public int update(BoardDto board) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("reviewns.update", board);
		ss.close();
		return result;
	}

	@Override
	public int findByAllCnt() {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("reviewns.findByAllCnt");
		ss.close();
		return result;
	}

	@Override
	public int delete(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.delete("reviewns.delete",bNum);
		ss.close();
		return result;
	}

	@Override
	public void updateCount(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		ss.update("reviewns.updateCount",bNum);
		ss.close();
		
	}

}
