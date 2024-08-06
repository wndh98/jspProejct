package muni.board.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import muni.board.dto.BoardDto;
import muni.mybatis.MybatisSqlSessionFactory;
import muni.paging.Pagination;

public class NoticeRepoImpl implements BoardRepo{

	@Override
	public List<BoardDto> selectList(Pagination pagination) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		List<BoardDto> result = ss.selectList("noticens.selectList",pagination);
		ss.close();
		return result;
	}

	public int insert(BoardDto board) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.insert("noticens.insert", board);
		ss.close();
		return result;
	}

	@Override
	public BoardDto select(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		BoardDto result = ss.selectOne("noticens.select", bNum);
		ss.close();
		return result;
	}

	@Override
	public int update(BoardDto board) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.update("noticens.update", board);
		ss.close();
		return result;
	}

	@Override
	public int findByAllCnt(int piNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.selectOne("noticens.findByAllCnt",piNum);
		ss.close();
		return result;
	}

	@Override
	public int delete(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		int result = ss.delete("noticens.delete",bNum);
		ss.close();
		return result;
	}

	@Override
	public void updateCount(int bNum) {
		SqlSession ss = MybatisSqlSessionFactory.getSqlSession(true);
		ss.update("noticens.updateCount",bNum);
		ss.close();
		
	}

	@Override
	public List<BoardDto> selectList(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
