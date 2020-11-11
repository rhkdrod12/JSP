<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String age = request.getParameter("age");

	int a = Integer.parseInt(age);
	
	if( a>= 20){
		request.setAttribute("result", "성년");
		response.sendRedirect("res_ex01_ok.jsp");
	}else{
		request.setAttribute("result", "미성년");
		response.sendRedirect("res_ex01_no.jsp");
	}
	
%>    
    
  
