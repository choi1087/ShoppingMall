<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="sports.css">
<meta charset="UTF-8">
<title>운동화</title>
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
                    <li><a href="running.jsp">운동화</a></li>
                    <li><a href="sports.jsp">스포츠</a></li>
                    <li><a href="casual.jsp">캐주얼</a></li>
                    <li><a href="shoes.jsp">구두</a></li>
                    <li><a href="sandles.jsp">샌들</a></li>
                </ul>
            </nav>

            <div id="content">

                <table>
                    <head>

                    </head>
                    <tbody>
                        <tr>
                       
                        
                        
                            <td><a href="../ProductController?action=check&url=running/running1.jpg"><img src="running/running1.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=running/running2.jpg"><img src="running/running2.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>나이키</td><td>나이키</td>
                        </tr>
                        <tr>
                            <td>에어맥스 270리액트</td><td>에어맥스 베로나</td>
                        </tr>
                        <tr>
                            <td>185,300</td><td>136,300</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=running/running3.jpg"><img src="running/running3.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=running/running4.jpg"><img src="running/running4.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>나이키</td><td>나이키</td>
                        </tr>
                        <tr>
                            <td>에어맥스 엑시스</td><td>코트 라이트 러닝 운동화</td>
                        </tr>
                        <tr>
                            <td>132,800</td><td>72,000</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=running/running5.jpg"><img src="running/running5.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=running/running6.jpg"><img src="running/running6.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>나이키</td><td>뉴발란스</td>
                        </tr>
                        <tr>
                            <td>테일윈드</td><td>992 그레이</td>
                        </tr>
                        <tr>
                            <td>132,800</td><td>129,000</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=running/running7.jpg"><img src="running/running7.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=running/running8.jpg"><img src="running/running8.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>뉴발란스</td><td>아디다스</td>
                        </tr>
                        <tr>
                            <td>ML373</td><td>런 팔콘 런닝화</td>
                        </tr>
                        <tr>
                            <td>39,990</td><td>42,800</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=running/running9.jpg"><img src="running/running9.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=running/running10.jpg"><img src="running/running10.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>아디다스</td><td>흴라</td>
                        </tr>
                        <tr>
                            <td>트리플 화이트</td><td>남여 공용 UGLY운동화</td>
                        </tr>
                        <tr>
                            <td>100,800</td><td>37,990</td>
                        </tr>
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
                
            </div>

        </div>
</body>
</html>