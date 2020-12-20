<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="register.css">
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>

<div id="page">
      <header>
          <div id="logo">
              <a href="../index.jsp"><img src="../media/xyz.png" width="200px" height="50px" alt="Logo"></a>
          </div>

          <div id="menu">
              <a href="../login/login.jsp">로그인</a>
              <a href="register.jsp">회원가입</a>
              <a href="../admin/adminLogin.jsp">관리자 페이지</a>
              
              <!-- <a href="#">개인정보 변경</a>
              <a href="#">장바구니</a> -->
          </div>                

      </header>

      <nav>
          <ul>
              <li><a href="running.html">운동화</a></li>
              <li><a href="sports.html">스포츠</a></li>
              <li><a href="casual.html">캐주얼</a></li>
              <li><a href="shoes.html">구두</a></li>
              <li><a href="sandles.html">샌들</a></li>
          </ul>
      </nav>


      <form action="../RegisterController" method="post" class="registerForm">
        <h1>회원가입</h1>                 
          
          <div class="idDiv">
              <input type="text" class="id" placeholder="아이디" name="id" id="id" style="color:black;">
          </div>
          
          <div class="passDiv">
              <input type="password" class="pass" placeholder="비밀번호" name="pw" id="pw" style="color:black;">
          </div>

          <div class="nameDiv">
            <input type="text" class="name" placeholder="이름" name="name" id="id" style="color:black;">
        </div>
          
          <div class="emailDiv">
              <input type="email" class="email" placeholder="이메일" name="email" id="email" style="color:black;">
          </div>
          
          <div class="phoneDiv">
              <input type="text" class="phone" placeholder="휴대폰 번호" name="phone" id="phone" style="color:black;">
          </div>
          
          <div class="addressDiv">
              <input type="text" class="address" placeholder="주소" name="address" id="address" style="color:black;">    
          </div>
        
        <button type="submit" class="btn" style="color: white;">
          동의하고 가입
        </button>
      </form>
    </div>

</body>
</html>