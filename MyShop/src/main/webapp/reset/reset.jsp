<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>

<script>
window.f(id) = function(){
	var answer=confirm("정말로 회원탈퇴 하시겠습니까?");
	if(answer==false){
		return false;
	}
	else{
		location.replace(/reset/deletePro.jsp);
	}
}

</script>

<meta charset="UTF-8">
<title>개인정보 변경 페이지</title>
<link rel="stylesheet" type="text/css" href="reset.css">
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
                    <span><% out.print(session.getAttribute("id")+ "님 환영합니다");%></span>
                    <a href="reset/reset.jsp">개인정보 변경</a>
                    <a href="#">장바구니</a>
                    <a href="../login/logout.jsp">로그아웃</a>
                </div>      
					<%
				}
			%>    

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

			
			<%-- <jsp:forward page="../ResetController?id=<%session.getAttribute("id"); %>"></jsp:forward> --%>
			<%
				session.setAttribute("id",session.getAttribute("id"));
			%>
			
            <form action="../ResetController" method="post" class="registerForm">
                <h1>개인 정보 변경</h1>
                                       
				<input type="hidden" name="id" value="<%session.getAttribute("id"); %>">                                       
                                               
                <div class="idDiv">
                    <input type="text" disabled class="id" id="id" name="id" value="아이디 변경 불가" style="color:red;">
                </div>
                
                <div class="passDiv">
                    <input type="password" class="pass" id="pw" name="pw" placeholder="비밀번호" style="color:black;">
                </div>
                
                <div class="nameDiv">
                    <input type="text" class="name" id="name" name="name" placeholder="이름" style="color:black;">
                </div>
                
                <div class="emailDiv">
                    <input type="email" class="email" id="email" name="email" placeholder="이메일" style="color:black;">
                </div>
                
                <div class="phoneDiv">
                    <input type="text" class="phone" id="phone" name="phone" placeholder="휴대폰 번호" style="color:black;">
                </div>
                
                <div class="addressDiv">
                    <input type="text" class="address" id="address" name="address" placeholder="주소" style="color:black;">    
                </div>
                
                <button type="submit" class="btn" name="alter" style="color: white;">
                개인 정보 수정
                </button>
               <a href="deletePro.jsp"><button type="button" class="btn" name="delete"  style="color: white;"  onclick="f(<%session.getAttribute("id"); %>)">
                회원탈퇴
                </button></a>
                
            </form>
                        
        </div>
</body>
</html>