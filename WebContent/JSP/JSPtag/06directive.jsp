<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../html/text_tag.html"%>
<!--
	errorPage는 페이지에 에러가 발생시에 설정한 경로의 페이지를 실행시킴
-->

<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
	
	
	ArrayList<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("홍길자");
	
	HashMap<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "홍길자");
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%=now %>
	<hr>
	list출력: 
	<%for(int i = 0 ; i< list.size() ; i++){ %>
		<%=list.get(i)%>
	<%}; %>
	
	<hr>
	map출력:
	<% for(int key : map.keySet()){ %>
		<%=map.get(key) %>	
	<%}; %>
	

</body>
</html>