<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		올바른 인증값으 적은 경우 reverse.jsp이동
		올바른 인증값을 적은 경우 authYN이름으로 인증성공세션 생성
		올바르지 않는 경우 다시 인증페이지로 이동
	*/
	
	String str = (String)session.getAttribute("code");
	
	if(str !=null){
				
		String code = request.getParameter("code");
		
		if(code != null && str.equals(code)){
			session.setAttribute("authYN", "y");
			response.sendRedirect("reserve.jsp");
		}else{
			%>
			<script>
				alert("잘못된 인증번호입니다.");
				location.href="auth.jsp";
			</script>
			<%
		}
		
		
	}else{
		%>
			<script>
				alert("잘못된 접근입니다.");
				location.href="auth.jsp";
			</script>
		
		<%
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>