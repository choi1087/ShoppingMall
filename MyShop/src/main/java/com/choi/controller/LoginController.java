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

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	UserDao userDao;
   
    public LoginController() {
        this.userDao = new UserDao();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		
		String checkId = userDao.getUserByID(id);
		User newUser = userDao.getUserInfo(id);
		System.out.println(newUser);
		
		if((id=="")||(pw=="")){
			System.out.println("아이디, 비밀번호 입력하기");
			String path = "/login/loginFail1.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		else if(id.equals("admin")) {
			if(pw.equals("1234")) {
				System.out.println("관리자 모드로 로그인 하였습니다.");
				String path = "/login/loginPro.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}
			else {
				System.out.println("관리자 비밀번호가 일치하지 않습니다.");
				String path = "/login/loginFail3.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}
		}
		else if(checkId==null) {
			System.out.println("아이디 존재하지 않음");
			String path = "/login/loginFail2.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		else {
			if(pw==null||!pw.equals(newUser.getPw())) {
				System.out.println(pw);
				System.out.println(newUser.getPw());
				System.out.println("비밀번호 일치하지 않음");
				String path = "/login/loginFail3.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}
			else {
				System.out.println("로그인 하였습니다.");
				String path = "/login/loginPro.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);			
			}
		}						
	}

}
