<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setMaxInactiveInterval(3600);
	session.setAttribute("user_id", "xxx123");
	session.setAttribute("user_name", "홍길자");
	
	request.setAttribute("test", "ssss");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${test}
	<a href="session_basic_get.jsp">세션값 확인하기</a>
	
</body>
</html>

