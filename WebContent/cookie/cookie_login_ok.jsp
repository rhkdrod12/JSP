<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/*
		1.아이디, 비밀번호를 받습니다.
		2.id=abc, pw=1234라면 로그인 성공이라고 간주(user_id, id)를 저장하는 쿠키를 생성
			cookie_welcome페이지로 리다이렉트
		3.아이디와 비밀번호가 다르다면, 다시 로그인 페이지로 리다이렉트
		4.welcome페이지에서는 쿠키값을 꺼내서 id님 환영합니다 출력
	*/
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String flag = request.getParameter("idCheck");
	
		
	if(!id.equals("abc")){
		response.sendRedirect("cookie_login.jsp");
	}else if(!pw.equals("1234")){
		response.sendRedirect("cookie_login.jsp");
	}else{
		if(flag != null && flag.equals("true")){
			response.addCookie(new Cookie("user_id", id));
		}
		response.sendRedirect("cookie_welcome.jsp");
	}
	
%>
