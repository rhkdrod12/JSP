<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%!
	/*
		선언자와 스크립트 차이
		
		선언자 - 멤버변수(누적), 메서드를 선언할 떄 사용
		JSP페이지가 다시 실행되도 해당 변수의 값이 남아있다.
	*/
	public int total = 0;		
	
	public int randomNum(){
		return new Random().nextInt(10) + 1;
	}
%>
<%
	/*
		JSP페이지 실행마다 한번씩 실행되는 코드
	*/
	int each = 0;		//접근 제어자를 선언할 수 없음
	
	total++;
	each++;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 페이지를 새로고침을 하게 되면 서버에 재요청을 한 것과 같음 -> 서버는 새로 페이지를 만들어 반환하게 됨  -->
	
	<div>total = <%=total %></div>		<!-- 페이지를 새로고침하면 멤버변수이기 때문에 <% %>은  일종의 메소드 역할과 같기 때문에 해당 선언된 변수를 계속 사용하기 떄문에 누적된 -->
	<div>each = <%=each %></div>		<!-- 계속 새로 선언되기 때문에 값이 누적되지 않음 -->
	
	
	
	
</body>
</html>