package com.webForLife.AdminWebApp.Service.Impl;

import java.sql.SQLException;
import java.util.List;

import com.webForLife.AdminWebApp.Dao.Impl.UsersDaoImpl;
import com.webForLife.AdminWebApp.Model.User;
import com.webForLife.AdminWebApp.Service.UsersService;

public class UsersServiceImpl implements UsersService {
	UsersDaoImpl usersDao = new UsersDaoImpl();
	
	@Override
	public List<User> getUsers() throws SQLException {
		List<User> users = usersDao.getUsers();
		
		return users;
	}
}
