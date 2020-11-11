<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		모델 		: 데이터 작업을 하는 클래스
		뷰		: 데이터를 사용자에게 보여주는 작업을 하는 곳
		컨트롤러	: 사용자의 요청에 맞는 서비스를 호출하는 영역
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자바코드로 빈 이용하기</h2>

	<form action="bean_basic_ok2.jsp" method="post">
		아이디:	<input type="text" name="id" required> <br/>
		비밀번호:	<input type="password" name="pw" required> <br/>
		이름:	<input type="text" name="name" required> <br/>
		이메일:	<input type="email" name="email" required> <br/>	
		<input type="submit" value="확인">
	</form>
</body>
</html>