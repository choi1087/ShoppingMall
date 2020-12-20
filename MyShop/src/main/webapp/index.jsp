<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XYZ-MART</title>
<link rel="stylesheet" type="text/css" href="index.css">
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

            <div id="content">

                <div id="main">
                    <img src="media/ad.png" width="100%" height="500px" alt="main image location">
                </div>

                <div>
                    <ul id="banner">
                        <li><a href="#"><img src="shoes/casual/casual1.jpg" alt="banner1" width="400" height="400"></a></li>
                        <li><a href="#"><img src="shoes/running/running1.jpg" alt="banner2" width="400" height="400"></a></li>
                        <li><a href="#"><img src="shoes/sandles/sandles1.jpg" alt="banner3" width="400" height="400"></a></li>
                        <li><a href="#"><img src="shoes/sports/sport1.jpg" alt="banner4" width="400" height="400"></a></li>
                        <li><a href="#"><img src="shoes/sports/sport2.jpg" alt="banner4" width="400" height="400"></a></li>
                        <li><a href="#"><img src="shoes/casual/casual2.jpg" alt="banner4" width="400" height="400"></a></li>
                        
                    </ul>
                </div>
                
            </div>

        </div>
</body>
</html>