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
		iframe 태그
		
		다른 페이지에 있는 컨텐츠를 가지고 올 떄 사용하는 태크
		
		include 태그와는 조금 다른 태그임
	  -->
	<!--  <iframe src="req_basic.jsp"></iframe>
	-->
	
	<div align="center">
		<table border="1">
			<tr>
				<th>이미지</th>
				<th>강의명</th>
				<th>내용</th>
				<th>일지</th>
			</tr>
			<tr>
				<td><a href="req_video_result.jsp?select=0"><img alt="java" src="./img/java.png" style="width: 100px;"></a></td>
				<td>자바</td>
				<td><a href="req_video_result.jsp?select=0">자바의 기본내용을 학습</a></td>
				<td>2020.01.02</td>
			</tr>
			<tr>
				<td><a href="req_video_result.jsp?select=1"><img alt="javascript" src="./img/javascript.png" style="width: 100px;"></a></td>
				<td>자바스크립트</td>
				<td><a href="req_video_result.jsp?select=1">자바스크립트 Baisc</a></td>
				<td>2020.02.12</td>
			</tr>
			<tr>
				<td><a href="req_video_result.jsp?select=2"><img alt="oracle" src="./img/oracle.png" style="width: 100px;"></a></td>
				<td>오라클</td>
				<td><a href="req_video_result.jsp?select=2">오라클문법 학습</a></td>
				<td>2020.03.14</td>
			</tr>
			
			
			
		</table>
	</div>
	
	
</body>
</html>