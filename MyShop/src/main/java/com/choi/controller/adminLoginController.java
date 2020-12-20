package com.choi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminLoginController")
public class adminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public adminLoginController() {
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if((id=="")||(pw=="")) {
			System.out.println("아이디, 비밀번호 입력하기");
			String path="/admin/loginFail1.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		else if(id.equals("admin")){
			if(pw.equals("123")) {
				System.out.println("관리자 모드로 로그인 하였습니다.");
				String path="/admin/admin.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}
			else {
				System.out.println("비밀번호 일치하지 않습니다.");
				String path = "/admin/loginFail2.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			}
		}
		doGet(request, response);
	}

}
