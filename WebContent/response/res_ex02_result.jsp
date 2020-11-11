<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	/*  
	
		1.아이디, 패스워드를 받아서 처리
		2.맞는 아이디와 패스워드가 들어오면 로그인 성공 abc1234, xxx123
		3.맞는 경우에는 res_ex02_welcome.jsp로 redirect
		4.id가 틀린 경우에는 res_ex02_id_fall로 리다이렉트
		5.pw가 틀린 경우에는 res_ex02_pw_fail로 리다이렉트 각각의 결과문구를 출력
	
	*/

	String userid = "abc1234";
	String userpw = "xxx123";

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	if(!id.equals(userid)){
		response.sendRedirect("res_ex02_id_fail.jsp");
	}else if(!pw.equals(userpw)){
		response.sendRedirect("res_ex02_pw_fail.jsp");
	}else{
		response.sendRedirect("res_ex02_welcome.jsp");
	}

%>