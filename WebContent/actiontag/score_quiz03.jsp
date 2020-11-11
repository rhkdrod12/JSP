<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		이름 : <%=request.getParameter("name") %> <br>
		평균 : <%=request.getAttribute("avg") %>
	</div>
</body>
</html>