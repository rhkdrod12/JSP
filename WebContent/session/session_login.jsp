<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

	.login_form{
		float : left;
		margin: 0 auto;
		width: 100px;
	}

</style>
</head>
<body>
	
	<h2>세션 로그인 연습</h2>

	<form action="session_login_ok.jsp" method="post">
		
		<div class="login_form">아이디:</div>
		<div><input type="text" name="id"></div>
		<div class="login_form">비밀번호:</div>
		<div><input type="password" name="pw"></div>
		<div class="login_form">이름:</div>
		<div><input type="text" name="nick"></div>
		<div class="login_form">    </div>
		<div><input type="submit" value="로그인"></div>
		
	</form>
	
</body>
</html>