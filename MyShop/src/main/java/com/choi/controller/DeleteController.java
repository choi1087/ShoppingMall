package com.choi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choi.dao.UserDao;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    UserDao userDao;
    
    public DeleteController() {
       this.userDao = new UserDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equals("delete")) {
			String id = request.getParameter("userId");
			userDao.deleteUserInfo(id);
			System.out.println(id+" 회원님의 정보가 삭제되었습니다.");
			
			response.sendRedirect("admin/deleteSuccess.jsp");
		}
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		userDao.deleteUserInfo(id);
		System.out.println(id+" 회원님의 정보가 삭제되었습니다.");
		
		response.sendRedirect("reset/deleteSuccess.jsp");
		
	}

}
