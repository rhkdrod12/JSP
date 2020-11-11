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
	1.form tag를 이용해서 post형식으로 이름, 국, 영, 수 값을 입력 받습니다.
	2.req_quiz_result.jsp로 전송
	3.해당 페이지에서는 평균, 합계를 구하고, 80점 이상= 고득점, 60이상=중간, 60아래=저득점 출력

  -->
  <form action="req_quiz_result.jsp" method="post">
  	<table>
  		<tr>
  			<th colspan="2" align="left">
  				<h3>학생 점수 입력</h3>
  			</th>
  		</tr>
  		<tr>
  			<td>
  				이름
  			</td>
  			<td>
  				<input type="text" name="name" placeholder="이름 입력" required="required">
  			</td>
  		</tr>
  		<tr>
  			<td>
  				국어
  			</td>
  			<td>
  				<input type="text" name="kor" placeholder="국어점수 입력" required="required" pattern="(100)|[1-9]?[0-9]">
  			</td>
  		</tr>
  		<tr>
  			<td>
  				영어
  			</td>
  			<td>
  				<input type="text" name="eng" placeholder="영어점수 입력"" required="required" pattern="(100)|[1-9]?[0-9]">
  			</td>
  		</tr>
  		<tr>
  			<td>
  				수학
  			</td>
  			<td>
  				<input type="text" name="math" placeholder="수학점수 입력"" required="required" pattern="(100)|[1-9]?[0-9]">
  			</td>
  		</tr>
  		<tr>
  			<td align="right" colspan="2">
  				<input type="submit" value="입력" style="width: 35%">
  			</td>
  		</tr>
  	
  	</table>
  </form>
  
</body>
</html>