<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		1. a태그를 이용해서 req_video 페이지로 상대경로, 절대경로
		2. img태그를 사용해서 java.png
		3. a태그를 이용해서 testServlet 상대경로, 절대경로
	 -->
	 <hr>
	 <a href="../../request/req_video.jsp">req_video(상대경로)</a>
	 <a href="<%=request.getContextPath() %>/request/req_video.jsp">req_video(절대경로)</a>
	 <hr>
	 
	  
	 <img alt="java" src="../../request/img/java.png" style="width: 200px">
	 <img alt="java" src="<%=request.getContextPath() %>/request/img/java.png" style="width: 200px"> 
	 
	 
	 <hr>
	 <a href = "../../banana">testServlet(상대경로)</a>
	 <a href = "<%=request.getContextPath()%>/banana">tesetServlet(절대경로)</a>
	 <hr>
	 
	 
	 
	 <% out.println("출력!");%>




</body>
</html>