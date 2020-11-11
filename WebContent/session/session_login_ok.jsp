<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		아이디, 비밀번호, nick을 받습니다.
		아이디와 비밀번호가 일치하면 아이디정보, 이름정보를 저장하는 세션을 생성
		session welcom페이지로 이동해서 id(이름)님 환영합니다.
		
		틀린 경우에는 로그인 페이지로
	
	*/
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("id");
	String nick = request.getParameter("id");
	
	Map<String, String[]> map = request.getParameterMap();
	
	
	
	if(map != null){
		if(!map.get("id")[0].equals(map.get("pw")[0])){
			//response.sendRedirect("session_login.jsp");
	%>
		<script>
			alert("아이디와 비밀번호를 확인하세요");
			location.href="session_login.jsp";			//redirect와 같음
		</script>
				
	<%	
		}else{
			session.setAttribute("id", map.get("id")[0]);
			session.setAttribute("pw", map.get("pw")[0]);
			session.setAttribute("nick", map.get("nick")[0]);
			
			response.sendRedirect("session_welcome.jsp");
		}

	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>