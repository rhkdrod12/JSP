<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
	/*
		앞에서 넘어온 폼값을 받아서 평균을 구합니다.
		
		평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
		평균이 60이하이면 score_quiz04으로 이동해서 "~님은 불합격입니다."
		
		조건: 
		session, application을 쓰지 않습니다.
	*/
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	double avg = 0;
	
	if(name != null && kor != null && eng != null && math != null){
		avg = (Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math))/3.0;
		request.setAttribute("avg", avg);
		if(avg >= 60){
			request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);	
		}else{
			request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
		}
		
	}else{
		response.sendRedirect("score_quiz01.jsp");
	}
%>





