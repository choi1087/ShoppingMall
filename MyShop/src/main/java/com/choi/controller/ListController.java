package com.choi.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choi.dao.UserDao;
import com.choi.model.User;

@WebServlet("/ListController")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	UserDao userDao;
	
    public ListController() {
      this.userDao = new UserDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> list = userDao.listUser();
		System.out.println(list.get(0).getId());
		System.out.println(list.get(1).getId());
		System.out.println(list.get(2).getId());
		request.setAttribute("list", list);
		String path="/reset/userInfo.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		
		doGet(request, response);
	}

}
