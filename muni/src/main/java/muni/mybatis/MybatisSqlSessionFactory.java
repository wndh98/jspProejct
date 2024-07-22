package muni.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisSqlSessionFactory {
	private static SqlSessionFactory ssf;
	private MybatisSqlSessionFactory() {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("configuration.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public SqlSession getSqlSession(boolean bool) {
		return ssf.openSession(bool);
	}
	
}
