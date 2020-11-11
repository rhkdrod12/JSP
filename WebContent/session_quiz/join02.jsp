<%@page import="java.util.List"%>
<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1.사용자 값을 받아서 user객체를 생성하고 사용자의 입력값을 저장한 후에
		UserRepository클래스에 저장
		
		2.join03페이지로 이동합니다.
	*/
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	
	
	if(id != null){
		
		User user = UserRepository.getUser(id);
		
		//아이디 생성
		if(user == null){
			UserRepository.setUser(new User(id,pw,name,birth));
			session.setAttribute("join", "y");
			response.sendRedirect("join03.jsp");
		}
		//아이디 존재
		else{
			%>
			<script>
				alert("이미 존재하는 아이디입니다.");
				location.href ="join01.jsp";
			</script>
			<%
		}
	}else{
		
		%>
		<script>
			alert("잘못된 접근입니다.");
			location.href ="join01.jsp";
		</script>
		<%
	}
	
	
	
%>


