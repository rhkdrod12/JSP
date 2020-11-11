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
	include를 사용할 때에는 두 가지 방식이 있음 
	include는 해당 문서에 있는 모든 내용을 가져오기 때문에 태그의 중복이 발생할 수 있다.
	
	html문서는 제약이 낮은 언어이기 떄문에 중복이 발생해도 작동은 가능하나 문법에는 어긋난 것임
	
	1.본문에서 헤더 부분을 날리고 include할 html문서에 해더를 작성한다.
	
	2.include할 html문서의 헤더를 날리고 본문의 html를 남긴다.
	
	-->
	<%@ include file="include_header.jsp" %>	
	
	<!-- 몸체에 대한 내용은 section 태그를 사용 -->
	
	<section>
	
		본문에 대한 영역
	
	</section>
	
	
	
	<%@ include file ="include_footer.jsp" %>
</body>
</html>