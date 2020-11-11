<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>testServlet입니다.</h3>
	
	<a href="testJSP.jsp">testJSP로 이동</a> <br>
	<a href="/JSP/banana">banana로 이동</a> <br>
	<a href="../apple">apple로 이동</a> <br>
	
	<div>get방식</div>
	<form action="../apple" method="get">
		<input name="name" type="text"> <br>
		<input name="age" type="text"> <br>
		<input type="submit" value="전송">
	</form>	
	
	<br>
	
	<div>post방식</div>
	<form action="../apple" method="post">
		<input name="name" type="text"> <br>
		<input name="age" type="text"> <br>
		<input type="submit" value="전송"> 
	</form>		
	
	<div>get방식</div>
	<form action="../request/req_basic.jsp" method="get">
		<input name="name" type="text"> <br>
		<input name="age" type="text"> <br>
		<input type="submit" value="전송">
	</form>	
	
</body>
</html>