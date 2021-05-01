package com.webForLife.AdminWebApp.Dao.Impl;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.webForLife.AdminWebApp.Dao.UsersDao;
import com.webForLife.AdminWebApp.Model.User;

public class UsersDaoImpl implements UsersDao {
	String resource = "com/webForLife/AdminWebApp/Resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;

	public UsersDaoImpl() {
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<User> getUsers() throws SQLException {
		List<User> users = null;
		try (SqlSession session = sqlSessionFactory.openSession()) {
			users = session.selectList("getUsers");
		}
		
		return users;
	}
}
