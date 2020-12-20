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
<title>샌들</title>
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
                            <td><a href="../ProductController?action=check&url=sandles/sandles1.jpg"><img src="sandles/sandles1.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sandles/sandles2.jpg"><img src="sandles/sandles2.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>아디다스</td><td>크록스</td>
                        </tr>
                        <tr>
                            <td>알파바운스 슬라이드</td><td>크록스 라인드 클로그</td>
                        </tr>
                        <tr>
                            <td>59,000</td><td style="color: red;">64,900 -> 54,000 (16%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sandles/sandles3.jpg"><img src="sandles/sandles3.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sandles/sandles4.jpg"><img src="sandles/sandles4.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>크록스</td><td>크록스</td>
                        </tr>
                        <tr>
                            <td>크록스 크록밴드</td><td>크록스 클래식 라인드 그래픽 클로그 키즈</td>
                        </tr>
                        <tr>
                            <td>54,900</td><td style="color: red;">59,900 -> 48,000 (19%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sandles/sandles5.jpg"><img src="sandles/sandles5.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sandles/sandles6.jpg"><img src="sandles/sandles6.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>푸마</td><td>호킨스</td>
                        </tr>
                        <tr>
                            <td>팝캣 셰르파</td><td>플로라</td>
                        </tr>
                        <tr>
                            <td>29,000</td><td style="color: red;">49,000 -> 19,000 (61%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sandles/sandles7.jpg"><img src="sandles/sandles7.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sandles/sandles8.jpg"><img src="sandles/sandles8.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>흴라</td><td>흴라</td>
                        </tr>
                        <tr>
                            <td>드리프터 크레마</td><td>슬릭 텐더 라인스</td>
                        </tr>
                        <tr>
                            <td>39,000</td><td style="color: red;">29,000 -> 23,000 (20%)</td>
                        </tr>
                        <tr>
                            <td><a href="../ProductController?action=check&url=sandles/sandles9.jpg"><img src="sandles/sandles9.jpg" width="400" height="400"></a></td>
                            <td><a href="../ProductController?action=check&url=sandles/sandles10.jpg"><img src="sandles/sandles10.jpg" width="400" height="400"></a></td>                            
                        </tr>
                        <tr>
                            <td>흴라</td><td>흴라</td>
                        </tr>
                        <tr>
                            <td>슬릭 텐더</td><td>패트롤</td>
                        </tr>
                        <tr>
                            <td style="color: red;">29,000 -> 23,000 (20%)</td><td style="color: red;">49,000 -> 39,000 (20%)</td>
                        </tr>
                    </tbody>
                    <tfoot>

                    </tfoot>
                </table>
                
            </div>

        </div>
</body>
</html>