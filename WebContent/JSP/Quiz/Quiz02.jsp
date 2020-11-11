<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int visitor = 0;
%>
<%
	int dan = new Random().nextInt(8)+2;
	visitor++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		방문자수 확인
		
		특정 방문횟수에 해당하면 당첨되셨습니다 출력
	
		랜덤한 수를 뽑아서 해당 수에 해당하는 구구단 출력
	  -->
	  <div><%=visitor %>번쨰 방문자입니다.</div>
	  <%if (visitor%10 == 0){ %>
	  	<div>당첨되셨습니다.</div>
	  <%}else{ %>
	  	<div>다음 기회에</div>
	  <%}; %>
	  
	  <hr>
	  
	  <h3>랜덤 구구단 <%=dan %>단</h3>
	  <div>이번에 나온 구구단 <%=dan %>입니다.</div>
	  
	  <table>
		<%for(int i = 1 ; i<= 9 ; i++){ %>
			<tr align="center">
				<td><%=dan%></td>
				<td>X</td>
				<td><%=i%></td>
				<td>=</td>
				<td><%=dan*i %></td>
			</tr>
		<%}; %>
	</table>
	  
	  
	  
</body>
</html>