<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		액션태그에서는 html 주석 사용하면 안됨
	
		action tag는 JSP에서만 사용되는 태그
		
		-사용형태-
		<jsp: action tag> </~~>
		<jsp: action tag/>
	
	--%> 
	
	<jsp:forward page="forward02.jsp"/>
	
	
</body>
</html>