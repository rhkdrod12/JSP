<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<!-- 
		get 방식은 반드시 form이 필요하지는 않음
		주소에 붙여서 보내는 방식이기 떄문에
		주소에 붙여만 있어도 동일함
		
		? : 주소 뒤에 붙임으로서 다음 문자들은 파라미터임을 알림
		= : 변수명 = 값 , 변수의 값을 의미함
		& : 변수명=값&변수명=값,  값들을 구분하기 위해 사용
		
	 -->
	 
	 <a href="req_get_result.jsp?name=test&id=qwe&number=1234">req_get_result.jsp페이지로</a>
	 
	 
</body>
</html>