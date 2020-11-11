<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	int select;
	try{
		select = Integer.valueOf(request.getParameter("select"));	
	}catch(NumberFormatException e){
		select = -1;
	}
	
	String[] info = {"자바 수업 소개", "자바스크립트 수업 소개", "오라클 설치 과정"};
	String[] path = {	"https://www.youtube.com/embed/L0a6N-rj-CI" , 
						"https://www.youtube.com/embed/nOTpuof2YG8?list=PLK7AWkPYwus6SdPJyhK9SNnKJybIC5qCs", 
						"https://www.youtube.com/embed/W5hPn_9d0dk" };

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 앞에서 어떤 동영상을 클릭했는지에 따라, 각각 알맞은 동영상이 보여지도록 처리 -->
	<%if(select >= 0 && select < path.length){ %>
		<div align="center">
			<h2>강의영상</h2>
			<hr>
			<p><%=info[select] %></p>
	
			<iframe width="1280" height="720"
				src=<%=path[select] %>
				frameborder="0"
				allow="	accelerometer; 
						autoplay; 
						clipboard-write; 
						encrypted-media; 
						gyroscope; 
						picture-in-picture"
				allowfullscreen> 
			</iframe>
		</div>
	<%}else{ %>
		<div align="center">
			<h3>잘못된 접근입니다.</h3>
			<div><a href="req_video.jsp">이전으로 돌아가기</a></div>
		</div>
	<%}; %>
</body>
</html>



