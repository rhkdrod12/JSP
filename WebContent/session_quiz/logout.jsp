<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	if(session.getAttribute("login") == null){
		%><script>
		alert("잘못된 접근입니다.");
		location.href = "login01.jsp";
	</script><%
	}
	session.removeAttribute("login");
%>

<script>
	alert("로그아웃했습니다.");
	location.href = "login01.jsp";
</script>