package com.webForLife.AdminWebApp.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webForLife.AdminWebApp.Model.User;
import com.webForLife.AdminWebApp.Service.Impl.UsersServiceImpl;

public class UserDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String pagePath = "";
	
    public UserDataController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher dispatcher = null;
//		
//		try {
//			pagePath = "PAGES/user-pages/user-table.jsp";
//			UsersServiceImpl userServiceImpl = new UsersServiceImpl();
//			List<User> users = userServiceImpl.getUsers();
//			request.setAttribute("users", users);
//			System.out.println(users);
//		} catch(Exception e) {
//			pagePath = "PAGES/error-page.jsp";
//		}
//		
//		dispatcher = request.getRequestDispatcher(pagePath);
//		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String event = request.getParameter("event");
			if (event.equalsIgnoreCase("getUsers")) {
				getAllUsers(request, response);
			} else if(event.equalsIgnoreCase("addUser")){
				addUser(request, response);
			} else {
				System.out.println("hindi pumasok");
			}
		} catch(Exception e) {
			errorPage(request, response);
		}
	}
	
	private void getAllUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		
		try {
			pagePath = "PAGES/user-pages/user-table.jsp";
			UsersServiceImpl userServiceImpl = new UsersServiceImpl();
			List<User> users = userServiceImpl.getUsers();
			request.setAttribute("users", users);
		} catch(Exception e) {
			pagePath = "PAGES/error-page.jsp";
		}
		
		dispatcher = request.getRequestDispatcher(pagePath);
		dispatcher.forward(request, response);
	}
	
	private void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		
		try {
			pagePath = "PAGES/user-pages/add-user.jsp";
		} catch(Exception e) {
			pagePath = "PAGES/error-page.jsp";
		}
		
		dispatcher = request.getRequestDispatcher(pagePath);
		dispatcher.forward(request, response);
	}
	
	private void errorPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		pagePath = "PAGES/error-page.jsp";
		
		dispatcher = request.getRequestDispatcher(pagePath);
		dispatcher.forward(request, response);
	}
}
