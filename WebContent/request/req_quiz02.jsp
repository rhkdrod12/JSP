<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>req_quiz02.jsp</h3>

	<% for(int i = 1 ; i <= 30 ; i++){ %>
		<% path = "req_quiz02_result.jsp?num="+i; %>
		<a href=<%=path %>><%=i %>번 학생</a> <br>
	<%}; %>
	
	<% for(int i = 1 ; i <= 30 ; i++){ %>
		<a href="req_quiz02_result.jsp?num=<%=i %>"><%=i %>번 학생</a> <br>
	<%}; %>
	
	
</body>
</html>