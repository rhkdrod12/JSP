<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//1. 쿠키는 기본생성자가 Cookie(쿠키이름, 쿠키값); 으로 구성되어있음
	Cookie co1 = new Cookie("choco", "초코칩쿠키");
	Cookie co2 = new Cookie("banana", "바나나쿠키");
	
	
	//2. 쿠키의 setter메서드로 쿠키 속성 지정
	
	//setMaxAge() 초단위로 쿠키 만료시간 지정
	co1.setMaxAge(60*60); 
	co2.setMaxAge(20);
	
	//3. 응답객체에 쿠키를 담아서 브라우저로 전송
	response.addCookie(co1);
	response.addCookie(co2);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<a href="cookie_baisc_get.jsp">쿠키 사용하기</a>
</body>
</html>