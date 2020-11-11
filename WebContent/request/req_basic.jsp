<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	/*
		스크립트릿으로 가장 위쪽에서 필요한 정보를 받습니다.
	*/
	
	String path = request.getContextPath();		//톰켓이 프로젝트를 구분하는 경로
	StringBuffer url = request.getRequestURL();	//전체 주소
	String uri = request.getRequestURI();		//전체 주소 - contextPath()
	String addr = request.getRemoteAddr();		//접속 IP
	String query = request.getQueryString();	//주소 뒤에 전달되는 문자열, jsp에서는 사용이 안됨
	String method = request.getMethod();		//요청방식
	String charset = request.getCharacterEncoding();
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String major = request.getParameter("major");
	String[] inter = request.getParameterValues("inter");
	
	String phone1 = request.getParameter("phone1");
	String text = request.getParameter("words");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div>path: <%=path %></div>
	<div>URL 정보: <%=url.toString() %></div>
	<div>URI 정보: <%=uri%></div>
	<div>addr 정보: <%=addr %></div>
	<div>query 정보: <%=query %></div>
	<div>method 정보: <%=method %></div>
	<div>인코딩 정보: <%=charset %></div>
	
	아이디 : <%=id %> <br>
	비밀번호: <%=pw %> <br>
	메일: <%=email %><br>
	전공: <%=major %><br>
	관심분야: <%=Arrays.toString(inter) %><br>
	통신사: <%=phone1 %><br>
	자기소개: <%=text %><br>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>