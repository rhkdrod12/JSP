<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>

<%-- setAttribute랑은 다른데???? --%>

<jsp:forward page="param03.jsp" >
	<jsp:param value="홍길동" name="name"/>
</jsp:forward>