package com.webForLife.AdminWebApp.Dao;

import java.sql.SQLException;
import java.util.List;

import com.webForLife.AdminWebApp.Model.User;

public interface UsersDao {
	public List<User> getUsers() throws SQLException;
}
