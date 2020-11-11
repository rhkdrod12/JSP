package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OutServlet
 */
@WebServlet("/OutServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OutServlet() {
        super();
    
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//response.setCharacterEncoding("euc-kr");
		//서블릿에서 out객체를 이용해서 브라우저 화면으로 문자열 데이터를 전송할 수 있습니다.
		
		//브라우저가 해석할 인코딩 방식 지정
		response.setContentType("text/plane; charset=utf-8");
				
		PrintWriter out = response.getWriter();
		
		out.println("<b>응답하랏!<b>");
		out.println("!!!!");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}










