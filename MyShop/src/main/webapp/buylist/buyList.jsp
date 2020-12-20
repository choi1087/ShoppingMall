<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="com.choi.dao.CartDao" %>
<%@page import="com.choi.model.Cart" %>
<%@page import="com.choi.dao.UserDao" %>
<%@page import="com.choi.model.User" %>
<%@page import="com.choi.dao.ProductDao" %>
<%@page import="com.choi.model.Product" %>
<% 
	CartDao dao = new CartDao();
	List<Cart> cart = dao.listCart();
	pageContext.setAttribute("cart", cart);
	request.setCharacterEncoding("UTF-8");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" type="text/css" href="buyList.css">
</head>
<body>
<div id="page">
            <header>
                <div id="logo">
                    <a href="../index.jsp"><img src="../media/xyz.png" width="200px" height="50px" alt="Logo"></a>
                </div>

			<%
				if(session.getAttribute("id")==null){
					%>
					<div id="menu">
                    <a href="../login/login.jsp">로그인</a>
                    <a href="../register/register.jsp">회원가입</a>
                    <a href="../admin/adminLogin.jsp">관리자 페이지</a>                                      
                </div>
                <%  
				}
				else{					
					%>
					<div id="menu">
                    <span><% out.print(session.getAttribute("id")+ "님 환영합니다"); %></span>
                    <a href="../reset/reset.jsp">개인정보 변경</a>
                    <a href="#">장바구니</a>
                    <a href="../login/logout.jsp">로그아웃</a>
                </div>      
					<%
				}
			%>
            </header>

            <nav>
                <ul>
                    <li><a href="../shoes/running.jsp">운동화</a></li>
                    <li><a href="../shoes/sports.jsp">스포츠</a></li>
                    <li><a href="../shoes/casual.jsp">캐주얼</a></li>
                    <li><a href="../shoes/shoes.jsp">구두</a></li>
                    <li><a href="../shoes/sandles.jsp">샌들</a></li>
                </ul>
            </nav>

            <div id="content">
			<form action="../deleteController" method="post">
				<table border="1" width = "700px">
					<thead>
					<tr>
						<th>장바구니 번호</th>						
						<th>아이디</th>
						<th>상품 번호</th>
						<th>주문 수량</th>
						
						<!-- <th>삭제</th> -->
					</tr>
					</thead>
					<tbody>
					
					<%
					System.out.println("In Tables");
					System.out.println(cart.size());
					 for(int i = 0; i < cart.size(); i++) {
						out.println("<tr align='center'>");
							out.println("<td>" + cart.get(i).getC_id() + "</td>");
							out.println("<td>" + cart.get(i).getId() + "</td>");
							out.println("<td>" + cart.get(i).getP_id() + "</td>");
							out.println("<td>" + cart.get(i).getQnt() + "</td>");							
							out.println("<td><a href='DeleteController?action=delete&userId="+ cart.get(i).getId() +"'>삭제</a></td>");	
						out.println("</tr>");
					}				 	
					%>
														
					</tbody>
				</table>			
               
            </form>
                
                
            </div>

        </div>
</body>
</html>