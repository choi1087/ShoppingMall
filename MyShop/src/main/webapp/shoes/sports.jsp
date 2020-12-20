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
<title>스포츠</title>
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
                            <td><a href="../ProductController?action=check&url=sports/sport1.jpg"><img src="sports/sport1.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sports/sport2.jpg"><img src="sports/sport2.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>나이키</td><td>나이키</td>
                        </tr>
                        <tr>
                            <td>리엑트 8티알 메쉬</td><td>주니어 베이퍼 13아카데미</td>
                        </tr>
                        <tr>
                            <td style="color: red;">99,000 -> 59,000 (40%)</td><td style="color: red;">69,000 -> 48,000 (30%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sports/sport3.jpg"><img src="sports/sport3.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sports/sport4.jpg"><img src="sports/sport4.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>뉴발란스</td><td>뉴발란스</td>
                        </tr>
                        <tr>
                            <td>ML703BA</td><td>ML703BC</td>
                        </tr>
                        <tr>
                            <td>129,000</td><td>129,000</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sports/sport5.jpg"><img src="sports/sport5.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sports/sport6.jpg"><img src="sports/sport6.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>뉴발란스</td><td>아디다스</td>
                        </tr>
                        <tr>
                            <td>ML703CLB</td><td>골레토 주니어</td>
                        </tr>
                        <tr>
                            <td>129,000</td><td style="color: red;">45,000 -> 27,000 (40%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sports/sport7.jpg"><img src="sports/sport7.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sports/sport8.jpg"><img src="sports/sport8.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>아식스</td><td>푸마</td>
                        </tr>
                        <tr>
                            <td>레이저빔</td><td>라피도</td>
                        </tr>
                        <tr>
                            <td style="color: red;">59,000 -> 29,000 (50%)</td><td style="color: red;">44,000 -> 31,000 (29%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sports/sport9.jpg"><img src="sports/sport9.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sports/sport10.jpg"><img src="sports/sport10.png" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>호킨스</td><td>흴라</td>
                        </tr>
                        <tr>
                            <td>스트라이커</td><td>흴라 햇 트릭</td>
                        </tr>
                        <tr>
                            <td style="color: red;">39,000 -> 19,000 (51%)</td><td style="color: red;">39,000 -> 23,000 (41%)</td>
                        </tr>
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
                
            </div>

        </div>
</body>
</html>