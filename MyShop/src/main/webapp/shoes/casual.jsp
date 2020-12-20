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
<title>캐쥬얼</title>
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
                            <td><a href="../ProductController?action=check&url=casual/casual1.jpg"><img src="casual/casual1.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=casual/casual2.jpg"><img src="casual/casual2.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>스페리</td><td>호킨스</td>
                        </tr>
                        <tr>
                            <td>컴2-아이</td><td>닉시</td>
                        </tr>
                        <tr>
                            <td style="color: red;">119,000 -> 69,000 (42%)</td><td style="color: red;">99,000 -> 59,000 (40%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=casual/casual3.jpg"><img src="casual/casual3.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=casual/casual4.jpg"><img src="casual/casual4.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>호킨스</td><td>호킨스</td>
                        </tr>
                        <tr>
                            <td>레이스 캐주얼</td><td>리워드</td>
                        </tr>
                        <tr>
                            <td style="color: red;">59,000 -> 39,000 (33%)</td><td style="color: red;">109,000 -> 65,000 (40%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=casual/casual5.jpg"><img src="casual/casual5.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=casual/casual6.jpg"><img src="casual/casual6.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>호킨스</td><td>호킨스</td>
                        </tr>
                        <tr>
                            <td>목 더비</td><td>뱀프</td>
                        </tr>
                        <tr>
                            <td style="color: red;">109,000 -> 59,000 (45%)</td><td style="color: red;">89,000 -> 71,000 (20%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=casual/casual7.jpg"><img src="casual/casual7.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=casual/casual8.jpg"><img src="casual/casual8.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>호킨스</td><td>호킨스</td>
                        </tr>
                        <tr>
                            <td>슬립온</td><td>알베나</td>
                        </tr>
                        <tr>
                            <td>96,000</td><td style="color: red;">109,000 -> 69,000 (36%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=casual/casual9.jpg"><img src="casual/casual9.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=casual/casual10.jpg"><img src="casual/casual10.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>호킨스</td><td>호킨스</td>
                        </tr>
                        <tr>
                            <td>웨스칸</td><td>피에라</td>
                        </tr>
                        <tr>
                            <td style="color: red;">109,000 -> 87,000 (20%)</td><td>59,300</td>
                        </tr>
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
                
            </div>

        </div>
</body>
</html>