<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.choi.dao.UserDao" %>
<%@page import="com.choi.model.User" %>
    
<% 
	
	UserDao dao = new UserDao();
	List<User> list = dao.listUser();
	pageContext.setAttribute("list", list);
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 변경 페이지</title>
<link rel="stylesheet" type="text/css" href="admin.css">
</head>
<body>
<div id="page">
           
				
                <h1>회원 정보</h1>
                                       
				<form action="../deleteController" method="post">
				<table border="1" width = "700px">
					<thead>
					<tr>
						<th>아이디</th>						
						<th>이름</th>
						<th>이메일</th>
						<th>전화번호</th>
						<th>주소</th>
						<th>삭제</th>
					</tr>
					</thead>
					<tbody>
					
					<%
					for(int i = 0; i < list.size(); i++) {
						out.println("<tr align='center'>");
							out.println("<td>" + list.get(i).getId() + "</td>");
							out.println("<td>" + list.get(i).getName() + "</td>");
							out.println("<td>" + list.get(i).getEmail() + "</td>");
							out.println("<td>" + list.get(i).getPhone() + "</td>");
							out.println("<td>" + list.get(i).getAddress() + "</td>");
							out.println("<td><a href='DeleteController?action=delete&userId="+ list.get(i).getId() +"'>삭제</a></td>");	
						out.println("</tr>");
					}					
					%>
					
														
					</tbody>
				</table>			
               
            </form>
        </div>
</body>
</html>