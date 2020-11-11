<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		date 클래스를 이용해서 xxxx년 xx월 xx일 
		쿠키 이름은 show쿠키로 생성해주세요.
	*/
	
	response.addCookie(
			new Cookie("show", new SimpleDateFormat("yyyy년MM월dd일")
										.format(new Date())));
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="cookie02.jsp">쿠키생성</a>
	
</body>
</html>