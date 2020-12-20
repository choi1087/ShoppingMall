package com.choi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choi.dao.UserDao;
import com.choi.model.User;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	UserDao userDao;
    
    public RegisterController() {
       this.userDao = new UserDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
				
		String checkId = userDao.getUserByID(id);		
		
		
		if((id=="")||(pw=="")||(name=="")||(email=="")||(phone=="")||(address=="")) {
			System.out.println("빈칸 존재");
			String path = "/register/registerFail2.jsp";			
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		else if(checkId!=null) {
			System.out.println("중복 아이디 존재");
			String path = "/register/registerFail1.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		else {			
			System.out.println("회원가입 완료");
			User u = new User(id,pw,name,email,phone,address);
			userDao.insertUser(u);
			System.out.println(u);
			
			response.sendRedirect("index.jsp");
			/*
			 * String path = "/register/registerResult.jsp";
			 * 
			 * RequestDispatcher rd = request.getRequestDispatcher(path);
			 * rd.forward(request, response);
			 */
		}
		
		
		
	}

}
