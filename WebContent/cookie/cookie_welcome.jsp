<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	Cookie[] cookies = request.getCookies();
	String name = null;
	
	if(cookies != null){
		for(Cookie co : cookies){
			if(co.getName().equals("user_id")){
				name = co.getValue();
				break;
			}
		}
	}
	
	if(name == null){
		response.sendRedirect("cookie_login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>환영합니다. <%=name %>님</h3>
</body>
</html>