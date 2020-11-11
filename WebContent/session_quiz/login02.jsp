<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id != null){
		
		User user = UserRepository.getUser(id);
		
		if(user == null){
			%>
			<script>
				alert("없는 아이디 입니다.");
				location.href ="login01.jsp";
			</script>
			<%
		}else{
			if(user.getPw().equals(pw)){
				session.setAttribute("login", user);
				response.sendRedirect("login03.jsp");
			}else{
				%>
				<script>
					alert("비밀번호가 일치하지 않습니다.");
					location.href ="login01.jsp";
				</script>
				<%
			}
		}
	}else{
		%>
		<script>
			alert("잘못된 접근입니다.");
			location.href ="login01.jsp";
		</script>
		<%
	}
	
%>
