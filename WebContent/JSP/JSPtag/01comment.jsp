<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str = "Hello World!!!";
	/*  
		하하하하하하하하하하하
		근데 여기서 그걸 사용하지는 않을텐데데데
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- html주석은 브라우저가 해석하지는 않으나 웹브라우저에서 나타납니다.  -->
	<%-- JSP 주석은 브라우저가 java가 해석하지 않는다. 웹브라우저에서 나타나지 않습니다. --%>
	
	<%-- jsp전용 주석은 html문서를 만들 때 주석을 추가하지 않는다 --%>
	<%for(int i = 0 ; i < 5 ; i++){ %>
		<h3><%=i+1%>. <%=str%></h3>
	<%} System.out.println("완료"); %>
	
	
	
</body>
</html>