<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">

var answer = comfirm("정말 회원탈퇴를 하시겠습니까?");
if(answer==false){
	history.go(-1);
}
else{
	location.replace(/reset/deletePro.jsp);
}
</script>


</body>
</html>