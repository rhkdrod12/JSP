package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//xml에서 맵핑(/apple)
public class testServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public testServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=UTF-8");
		
		System.out.println("[접속 정보]");
		System.out.println("contextPath: " + request.getContextPath());
		System.out.println("요청한 URL: " + request.getRequestURI());
		System.out.println("접속 IP: " + request.getRemoteAddr());
		
		System.out.println("이름: " + request.getParameter("name"));
		System.out.println("나이: " + request.getParameter("age"));
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		response.getWriter().println("<html><body>test입니다.<body></html>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}
	
	
	
}
