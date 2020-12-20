<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import="com.choi.dao.ProductDao" %>
<%@page import="com.choi.model.Product" %>
    
<% 
	ProductDao dao = new ProductDao();
	String url = request.getParameter("url");	
	Product product = dao.getProductInfo(url);	
	pageContext.setAttribute("product", product);
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 페이지</title>

<link rel="stylesheet" type="text/css" href="buy/buy.css">
</head>
<body>
<div id="page">
            <header>
                <div id="logo">
                    <a href="index.jsp"><img src="media/xyz.png" width="200px" height="50px" alt="Logo"></a>
                </div>

			<%
				if(session.getAttribute("id")==null){
					%>
					<div id="menu">
                    <a href="login/login.jsp">로그인</a>
                    <a href="register/register.jsp">회원가입</a>
                    <a href="admin/adminLogin.jsp">관리자 페이지</a>                                      
                </div>
                <%  
				}
				else{					
					%>
					<div id="menu">
                    <span><% out.print(session.getAttribute("id")+ "님 환영합니다"); %></span>
                    <a href="reset/reset.jsp">개인정보 변경</a>
                    <a href="#">장바구니</a>
                    <a href="login/logout.jsp">로그아웃</a>
                </div>      
					<%
				}
			%>
            </header>

            <nav>
                <ul>
                    <li><a href="shoes/running.jsp">운동화</a></li>
                    <li><a href="shoes/sports.jsp">스포츠</a></li>
                    <li><a href="shoes/casual.jsp">캐주얼</a></li>
                    <li><a href="shoes/shoes.jsp">구두</a></li>
                    <li><a href="shoes/sandles.jsp">샌들</a></li>
                </ul>
            </nav>

            <table>
                <tbody>
                    <tr>
                    
                    <%
                    	
                    	System.out.println(product.getP_name());
                    	System.out.println(product.getP_id());
                    	System.out.println(product.getPrice());
                    	System.out.println(product.getQnt());
                    	System.out.println(product.getUrl());
                    	System.out.println(session.getAttribute("id"));
                    	
                    	
                    %>
                        <td><img src="shoes/<%=product.getUrl()%>" width="550px" height="550"></td>                                               
						
                        <td style="margin-left:30px">
                            <table style="font-size: 30px;">
                                <thead>
                                    <tr><td style="text-align:center">제품명</td><td><%=product.getP_name()%></td></tr>                                    
                                </thead>
                                <tbody>
                                    <tr><td style="text-align:center">제품코드</td><td><%=product.getP_id()%></td></tr>
                                    <tr><td style="text-align:center">제품가격</td><td><%=product.getPrice()%></td></tr>
                                    <tr><td style="text-align:center">배송비</td><td>무료</td></tr>
                                    <tr><td style="text-align:center">재고</td><td><%=product.getQnt()%></td></tr>
                                </tbody>
                                <tfoot>
                                    <tr><td style="text-align:right"><a href="BuyController?action=check&id=<%=session.getAttribute("id") %>&p_id=<%=product.getP_id()%>"><button type="button" class="btn">장바구니</button></a></td>
                                    <td style="text-align:right"><button type="button" class="btn">구매</button></td></tr>
                                </tfoot>
                            </table>
                        </td>
                    </tr>
                    
                </tbody>
            </table>

        </div>
</body>
</html>