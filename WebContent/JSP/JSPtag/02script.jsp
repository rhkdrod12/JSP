<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	/*
		선언부영역
		선언부에서 선언된 변수는 전역 변수처럼 동작하게 된다.
	*/

%>
<%
	/* 
		스크립트릿 영역
		스크립트릿에서 선언된 변수는 지역 변수처럼 동작하게 된다.
	*/
	int num = 10;

	System.out.println("시작합니다");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		int a = 1;
		
		if(a > 10){
			System.out.println("<p>10보다 크다</p>");
			out.println("<p>10보다 크다</p>");						
		}else{
			System.out.println("10보다 작다");
			out.println("<p>10보다 작다</p>");
		};
	%>
	
	<hr>
	
	<%
		for(int i = 1; i <= 10 ; i++){
			out.println(i+"<br>");
		};
	%>
	
	<ul>
	<%
		for(int i = 1; i <= 10 ; i++){
			out.println("<li>"+ i + "번" +"</li>");
		};
	%>
	</ul>	
	
	<% for(int i = 0 ; i<10 ; i++){%>
		<div> <%= String.format("%02d", i+1)%>번 반복</div>
	<%}; %>
	
	<hr>

	<%-- 흠.. 글쎄유.. 과연 편하다고 해야하나.. --%>
	<%	if(num > 10){ %>
			<p>10보다 큼<br></p> 
	<%	}else{%>
			<p>10보다 작음<br></p> 
	<%	};%>
	
	<hr>
	
	<h3>3단 구구단</h3>
	<hr>
	<%
		int dan = 3;
	
		for(int i = 1 ; i <= 9 ; i++){
			out.println(String.format("<p>%2d X %2d = %2d</p><hr>", dan, i, dan*i));
		};
	%>	
	
	<hr>
	
	<div>드롭박스</div>
	<select>
		<%for(int i = 0 ; i< 20 ; i++) {%>
		<option>드롭박스<%=String.format("%02d", i+1) %>번째
		<%}; %>	
	</select>
	
	<hr>
	
	<table>
		<tr align="center">
			<th colspan="4">3단 구구단</th>
		</tr>
		
		<%for(int i = 1 ; i<= 9 ; i++){ %>
			<tr>
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