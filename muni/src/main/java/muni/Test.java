package muni;

import org.apache.ibatis.session.SqlSession;

import muni.mybatis.MybatisSqlSessionFactory;

public class Test {
public static void main(String[] args) {
	SqlSession ss= MybatisSqlSessionFactory.getSqlSession(true);
	System.out.println("연결성공");
	ss.close();
}
}
