package com.webForLife.AdminWebApp.Service;

import java.sql.SQLException;
import java.util.List;

import com.webForLife.AdminWebApp.Model.User;

public interface UsersService {
	public List<User> getUsers() throws SQLException;
}
