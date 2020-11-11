<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	/*
		show 쿠키가 있다면 쿠키가 가지고 있는 날짜를 출력,
		없으면 쿠키가 없네요 출력
	*/
	
	Cookie[] cookies = request.getCookies();
	
	String str = "쿠기가 없네용~";
	
	for(int i = 0 ; i < cookies.length ;i++	){
		if(cookies[i].getName().equals("show")){
			str = cookies[i].getValue();
			break;
		}
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div>
		<%=str %>
	</div>
	
	
</body>
</html>