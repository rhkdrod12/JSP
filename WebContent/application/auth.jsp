<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UUID uuid = UUID.randomUUID();
	
	String[] arr = uuid.toString().split("-");
	
	session.setAttribute("code", arr[1]);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>인증페이지</h2>
	
	<form action="auth_ok.jsp" method="post">
		인증문자:<b><i><del><%=arr[1] %></del></i></b><br>
		
		인증문자를 입력하세요:<input type="text" name="code"><br>
		<input type="submit" value="확인">
		
	</form>
	
	
</body>
</html>