package com.chacha.mybatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	
	private static SqlSessionFactory sqlSessionFactory; //공용으로 필수로 사용해야하는 변수. 아직 변수 선언만 한거지 아무 기능이 들어가있지 않음.
	
	static {
		String resource = "com/chacha/mybatis/Configuration.xml"; // configuration안에는 db.propertis와 chachamapper도 들어있음.
		
		try {//DB와 입출력(IO) 할 때 필요. 지금은 IO를 하고있기 때문에 필요.
			Reader reader = Resources.getResourceAsReader(resource);//(resource)를 읽어서 나에게 소스를 줘(getResourceAsReader)~~ 라는 의미
			// reder로 자바코드로 읽어온 것.
			
			if(sqlSessionFactory == null) {//만약 마이바티스를 사용하고 있지 않다면,
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
				// 객체 생성을 할건데 어떤 값으로 할거냐면 이 (reader), 즉 마이바티스의 환경설정 3개가 들어있는 걸 가지고 하겠다.
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSession() {//getSqlSession을 호출하면하면 마이바티스를 사용할 수 있게 되는 것!
		return sqlSessionFactory;
	}
	
	
}
