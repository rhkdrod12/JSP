<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

	<h2>1번페이지</h2>
	<%@ include file="include02.jsp" %>
	<%=total %>
	<%-- java 태그까지의 모든 값다 다 가져온다. 다른 페이지에서 선언된 변수도 사용가능 --%>
	
	
	<%--
	<h2>액션태그</h2>
	<jsp:include page="include02.jsp"/>
	
	<%--<%=total %>
	<%-- 에러발생, total을 가져오지 못함, UI만 가져옴 --%>
	
	
	
</body>
</html>