<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String flag = (String)session.getAttribute("join");
	
	if(flag == null){
		
		%>
		<script>
			alert("잘못된 접근입니다.");
			location.href ="login01.jsp";
		</script>
		<%
	}else{
		session.removeAttribute("join");
	}

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 완료</h2>
	
	<a href="login01.jsp">로그인 화면</a>
	<a href="join01.jsp">가입화면</a>
	
</body>
</html>