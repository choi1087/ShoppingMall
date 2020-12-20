<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<title>XYZ-MART</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div id="page">
            <header>
                <div id="logo">
                    <a href="../index.jsp"><img src="../media/xyz.png" width="200px" height="50px" alt="Logo"></a>
                </div>

                <div id="menu">
                    <a href="login.jsp">로그인</a>
                    <a href="../register/register.jsp">회원가입</a>
                    <a href="../reset/reset.jsp">관리자 페이지</a>
                    
                    <!-- <a href="#">개인정보 변경</a>
                    <a href="#">장바구니</a> -->
                </div>                

            </header>

            <nav>
                <ul>
                    <li><a href="running.jsp">운동화</a></li>
                    <li><a href="sports.jsp">스포츠</a></li>
                    <li><a href="casual.jsp">캐주얼</a></li>
                    <li><a href="shoes.jsp">구두</a></li>
                    <li><a href="sandles.jsp">샌들</a></li>
                </ul>
            </nav>

           <%
           String id = request.getParameter("id");
           String pass = request.getParameter("pass");
           
           String adminId = "admin", adminPass = "1234";
           
           System.out.println();
           
           if(id.equals(adminId)){
        	// 로그인 작업 -> 세션값 생성
       		   session.setAttribute("id", id);
       		   session.setAttribute("pass", pass);
       		   
       		 response.sendRedirect("index.jsp");
       		   %>
       		   <script>
       		   alert("관리자 아이디로 로그인 되었습니다.");
       		location.href="../../index.jsp"
       		   </script>
       		   <%
           }else{
        	// 로그인 작업 -> 세션값 생성
       		   session.setAttribute("id", id);
       		   session.setAttribute("pass", pass);
       		   
       		   response.sendRedirect("index.jsp");
       		   %>
       		   <script>
       		   alert("로그인이 완료 되었습니다.");
       		   location.replace(/index.jsp);
       		   </script>
       		   <%
           }
           
        %>
        </div>
</body>
</html>