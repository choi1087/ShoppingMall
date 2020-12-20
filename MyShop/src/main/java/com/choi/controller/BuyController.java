package com.choi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choi.dao.CartDao;
import com.choi.dao.ProductDao;
import com.choi.model.Cart;

@WebServlet("/BuyController")
public class BuyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	ProductDao productDao;
	CartDao cartDao;
    public BuyController() {
       this.productDao = new ProductDao();
       this.cartDao = new CartDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Here is BuyController!");
		String action = request.getParameter("action");
		if(action.equals("check")) {
			String id = request.getParameter("id");
			System.out.println("id : " + id);
			
			int p_id = Integer.parseInt(request.getParameter("p_id"));
			System.out.println("p_id : " + p_id);
			
			int count = cartDao.countCart(p_id, id);
			System.out.println("count : " + count);
			
			Cart c = new Cart(id,p_id,1);
			if(count==0) {
				cartDao.insertCart(c);
			}else {
				cartDao.updateCart(c);
			}
			
			String path = "buylist/pro.jsp";
			//String path = "buylist/buyList.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);	
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
