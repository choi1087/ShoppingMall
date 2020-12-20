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



@WebServlet("/ResetController")
public class ResetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	UserDao userDao;	
    
    public ResetController() {
        this.userDao = new UserDao();        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String)request.getSession().getAttribute("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		User u = new User(id,pw,name,email,phone,address);
		
		if((pw==null)||(name==null)||(email==null)||(phone==null)||(address==null)) {
			System.out.println("필수 정보들을 채워주세요");
			String path="/reset/resetFail.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
		else{
			System.out.println("정보가 수정되었습니다.");			
			userDao.updateUserInfo(u);
			System.out.println(u);
			 
			response.sendRedirect("index.jsp");
//			String path = "/reset/resetPro.jsp";
//			RequestDispatcher rd = request.getRequestDispatcher(path);
//			rd.forward(request, response);
		}
		
		doGet(request, response);
	}

}
