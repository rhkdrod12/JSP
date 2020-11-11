<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
	<link rel="stylesheet" type="text/css" href="./style.css">
</head>
<body width="100%" height="100%">
    <form action="login02.jsp" method="post" class="loginForm">
      <h2>Login</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="ID" name="id" required>
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="PW" name="pw" required>
      </div>
      <button type="submit" class="btn" onclick="button()">
        LOG IN
      </button>
      
      <div class="bottomText">
        Don't you have ID? <a href="join01.jsp">sign up</a>
      </div>
    </form>
</body>


</html>