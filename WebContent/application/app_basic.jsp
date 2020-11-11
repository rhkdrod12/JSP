<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		application 영역은 서버가 중단될 때까지 유지되는 객체이다.
		-> 톰켓이 꺼질 때까지 유지되는 객체
		
		서버당 한개의 객체를 가진다
	*/
	
	
	int total = 0;
		
	if(application.getAttribute("total") != null){
		total = (int)application.getAttribute("total");
	}
	
	total++;
	
	application.setAttribute("total", total);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	값: <%=total %>
</body>
</html>