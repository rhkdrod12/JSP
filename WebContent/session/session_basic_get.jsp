<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	
	session.invalidate();	//세션 초기화
		
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	세션에 저장된 아이디: <%=str %><br>
	세션에 저장된 이름: 	<%=name %><br>
	
	
	
</body>
</html>