<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	String[] members = {"어피치", "라이언", "제이지","무지","프로도","튜브"};	
	ArrayList<String> cur_member = new ArrayList<>();
	int count = 0;	
	
	Random rd = new Random();
%>
<%
	if(count >= 10){
		cur_member.clear();	
		count = 0;	
	}

	String select_member = members[rd.nextInt(members.length)];
	int sameCnt = (int) cur_member.stream().filter(x->x.equals(select_member)).count() + 1;
		
	cur_member.add(select_member);
	count++;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div><b>[<%=select_member %>]</b>님이 입장</div>
	<div>현재 같은 카카오 프렌즈는 <%=sameCnt %>명 입니다.</div>
	
	<h2>현재 구성정보</h2>
	<div><%=cur_member %>(<%=count %>명 참가중)</div>



</body>
</html>