<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.choi.dao.ProductDao" %>
<%@page import="com.choi.model.Product" %>
    
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String url = request.getParameter("url");
ProductDao productDao = new ProductDao();
Product product = productDao.getProductInfo(url);
System.out.println(product);
%>
</body>
</html>