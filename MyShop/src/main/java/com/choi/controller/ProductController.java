package com.choi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.choi.dao.ProductDao;
import com.choi.model.Product;

@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    ProductDao productDao;
    public ProductController() {
        this.productDao = new ProductDao();        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("check")) {
			String url = request.getParameter("url");
			System.out.println("ProductController url : " + url);
			Product product = productDao.getProductInfo(url);
			System.out.println(product);
			String path = "buy/buy.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);	
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
