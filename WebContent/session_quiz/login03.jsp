<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	User user = (User)session.getAttribute("login");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% if(user == null){%>		
		<script>
			alert("잘못된 접근입니다.");
			location.href ="login01.jsp";
		</script>
		
	<%}else{%>
	<h3> <%=user.getName() %>(<%=user.getId() %>)님 환영합니다!</h3>
	
	<a href="login01.jsp">로그인 화면으로</a> <br>
	<a href="logout.jsp">로그아웃하기</a> <br>
	<a href="delete.jsp">회원 탈퇴하기</a> <br>
	<%};%>
	
</body>
</html>




