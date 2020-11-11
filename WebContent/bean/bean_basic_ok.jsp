<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	/*
		
	*/
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	
	User us = new User(id, pw, name, email);
	request.setAttribute("us", us);
	
%>


<%-- 

<jsp:useBean id="user" class="com.bean.User" scope="request">
	<jsp:setProperty property="id" name="user" value="<%=id%>"/>
	<jsp:setProperty property="pw" name="user" value="<%=pw%>"/>
	<jsp:setProperty property="name" name="user" value="<%=name%>"/>
	<jsp:setProperty property="email" name="user" value="<%=email%>"/>
</jsp:useBean>

위와 같은 형식으로 사용하게 됨 

그런데 property의 이름이 bean객체와 동일한 경우에는 *으로 대체가 가능하다.
--%>

<jsp:useBean id="user" class="com.bean.User" scope="request">
	<jsp:setProperty property="*" name="user"/>
</jsp:useBean>

<%-- scope에 등록된 bean객체에서 property에 해당되는 값을 꺼내옴, getter를 사용한다. --%>
<jsp:getProperty property="id" name="user"/>


<html>
<body>
<%-- EL방식으로 꺼내와도 동일 --%>
	${user.id }, ${us.id }
</body>
</html>
