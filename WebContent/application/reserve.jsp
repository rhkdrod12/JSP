<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	if(session.getAttribute("authYN") == null){
		response.sendRedirect("auth.jsp");
	}


	//application 예약정보를 받습니다.
	List<String> list = (List<String>)application.getAttribute("list");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
	
		태그옵션
		
		disabled	: 태그를 선택하지 못하도록 처리하는 옵션 
		checked		: checkbox, radio를 선택하게하는 옵션
		selected 	: select태그에서 미리 값을 선택하게 하는 옵션
		required	: input 태그에 값 입력을 반드시하게 요구
		readonly	: input 태그를 읽기 전용으로 사용
	
	-->
	<div align="center">
		<h2>영화 좌석 예약</h2>
		<h4>예약할 좌석을 체크하세요</h4>
	
		<form action="reserve_ok.jsp" method="post">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<% for(char c = 'A' ; c<='Z'; c++){ %>
				<small><%=c %></small>&nbsp;&nbsp;	<!-- &nbsp; : space 의미, &lt : > 를 의미 -->
			<%} %>
			<br>
			
			<%for(int i = 1 ; i <=6 ; i++){ %>
				<%=i %>
				<%for(char j = 'A' ; j<='Z'; j++){ %>
					<input type="checkbox" name="seat" <%= list.contains(j+"-"+i)?"disabled":""%> value="<%=j%>-<%=i%>">
				<%} %>
				<%= i==3 ?"<br/>":"" %>
				<br>
			<%} %>
			
			<input type="submit" value="예약" >	<!-- onclick 클릭했을 때 동작하는 JS  -->
			<input type="button" value="처음으로" onclick="location.href ='auth.jsp'">
			
		</form>
	</div>
	
</body>
</html>






