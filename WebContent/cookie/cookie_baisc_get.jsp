<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<h3>쿠키!</h3>
	
	<%
		Cookie[] coArr = request.getCookies();
		
		if(coArr != null){
			for(int i = 0 ; i < coArr.length ; i++){
				out.println(coArr[i].getName() + " " + coArr[i].getValue() + "<br>");
			}
		}
	%>
	
	
</body>
</html>