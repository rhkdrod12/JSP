<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!
	/*
		일반적으로 선언부는 이 위치에서 선언하게 됨
		
		-선언자는 전역의 의미로 사용되게 됨
		-메서드 선언이 가능
		
		선언만 하는 곳이기 때문에 사용은 스크립트릿으로 사용하게 된다.
	*/
	
	public int i = 10;					//접근제어자 선언 가능
	public String str = "WEB";
	
	public int method(int a, int b){	// 메소드 선언 가능
		return a+b;
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	out.println("i값: " + i);
	out.println("str값: " + str);
	out.println("method 호출: " + method(10, 5));
%>


	<p>i값: <%=i %> </p>
	
	<p>str값: <%=str %> </p>
	
	<p>method 호출: <%=method(10,5) %> </p>


</body>
</html>