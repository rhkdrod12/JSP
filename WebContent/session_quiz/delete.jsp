<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%

	User user = (User)session.getAttribute("login");

	if(user != null){
		UserRepository.deleteUser(user);
		session.removeAttribute("login");
		
		response.sendRedirect("login01.jsp");
		
	}else{
		%>
		<script>
			alert("잘못된 접근입니다.");
			location.href ="login01.jsp";
		</script>
		<%
	}
	
%>