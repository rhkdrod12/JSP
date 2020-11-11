<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	Cookie[] cookies = request.getCookies();
	String name = "";
	
	if(cookies != null){
		for(Cookie co : cookies){
			if(co.getName().equals("user_id")){
				name = co.getValue();
			}
		}
	}
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	.test2{
		float:left;
		margin: 0 auto;
		width: 100px;
	}
	
	.test{
		text-align: right;
		margin: 10px;
		width: 250px;
	}
		
</style>

</head>
	<body>
		
		
		<h2>쿠키연습</h2>
		
		<form action="cookie_login_ok.jsp" method="post">
			 <div><div class = "test2">아이디 </div> <div> <input type="text" name="id" required="required" placeholder="아이디입력" value=<%=name %>> </div></div>
			 <div><div class = "test2">비밀번호</div> <div> <input type="password" name="pw" required="required" placeholder="비밀번호입력"></div></div>
			 <div class="test"><input type="submit" value="로그인"></div>
			 <div><input type="checkbox" name="idCheck" value="true">아이디 기억하기</div>
		</form>
				
	</body>
</html>







