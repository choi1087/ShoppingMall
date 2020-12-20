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
                    <a href="../admin/adminLogin.jsp">관리자 페이지</a>
                    
                    <!-- <a href="#">개인정보 변경</a>
                    <a href="#">장바구니</a> -->
                </div>                

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

            <form action="../LoginController" method="post" class="loginForm">
		        <h1 style="background-color: white;">로그인</h1>
		        <div class="idDiv">
		          <input type="text" name="id" id="id" class="id" placeholder="아이디" style="color: black;">
		        </div>
		        <div class="passDiv">
		          <input type="password" name="pw" id="pw" class="pass" placeholder="비밀번호" style="color: black;">
		        </div>
		        <input type="submit" class="btn" style="color: white;" value="로그인">		        	
		        </input>
		        <br>
		        <a href="../register/register.jsp"><button type="button" class="btn" style="color:white">
		        	 회원가입
		      </button></a>
		        
		      </form>
        </div>
</body>
</html>