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
<title>구두</title>
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
                    
                    <tbody>
                        <tr>
                            <td><a href="../ProductController?action=check&url=shoes/shoes1.jpg"><img src="shoes/shoes1.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=shoes/shoes2.jpg"><img src="shoes/shoes2.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>마키모크</td><td>마키모크</td>
                        </tr>
                        <tr>
                            <td>Arbo</td><td>Beronica</td>
                        </tr>
                        <tr>
                            <td style="color: red;">79,000 -> 51,300 (35%)</td><td style="color: red;">85,000 -> 55,200 (35%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=shoes/shoes3.jpg"><img src="shoes/shoes3.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=shoes/shoes4.jpg"><img src="shoes/shoes4.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>마키모크</td><td>마키모크</td>
                        </tr>
                        <tr>
                            <td>Bloaffer</td><td>Chacha</td>
                        </tr>
                        <tr>
                            <td style="color: red;">85,000 -> 55,200 (35%)</td><td style="color: red;">89,000 -> 57,800 (35%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=shoes/shoes5.jpg"><img src="shoes/shoes5.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=shoes/shoes6.jpg"><img src="shoes/shoes6.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>마키모크</td><td>마키모크</td>
                        </tr>
                        <tr>
                            <td>Lumi</td><td>Moan</td>
                        </tr>
                        <tr>
                            <td style="color: red;">85,000 -> 55,200 (35%)</td><td style="color: red;">79,000 -> 51,300 (35%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=shoes/shoes7.jpg"><img src="shoes/shoes7.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=shoes/shoes8.jpg"><img src="shoes/shoes8.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>마키모크</td><td>마키모크</td>
                        </tr>
                        <tr>
                            <td>Nana</td><td>Plum</td>
                        </tr>
                        <tr>
                            <td style="color: red;">79,000 -> 51,300 (35%)</td><td style="color: red;">85,000 -> 55,200 (35%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=shoes/shoes9.jpg"><img src="shoes/shoes9.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=shoes/shoes10.jpg"><img src="shoes/shoes10.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>마키모크</td><td>마키모크</td>
                        </tr>
                        <tr>
                            <td>Ppetti</td><td>Rouge</td>
                        </tr>
                        <tr>
                            <td style="color: red;">85,000 -> 55,200 (35%)</td><td style="color: red;">85,000 -> 55,200 (35%)</td>
                        </tr>
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
                
            </div>

        </div>
</body>
</html>