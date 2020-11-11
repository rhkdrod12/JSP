<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");

	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	int total = kor + eng + math;
	double avg = (total)/3.0;
	
	String level;
	
	if(avg >= 80){
		level = "고득점";
	}else if(avg >= 60){
		level = "중간";
	}else{
		level = "저득점";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table>
  		<tr>
  			<th colspan="2" align="left">
  				<h3>학생 점수 출력</h3>
  			</th>
  		</tr>
  		<tr>
  			<td width="100px">
  				이름
  			</td>
  			<td align="right" width="100px">
  				<%=name %>
  			</td>
  		</tr>
  		<tr>
  			<td>
  				국어
  			</td>
  			<td align="right">
  				<%=kor %>점
  			</td>
  		</tr>
  		<tr>
  			<td>
  				영어
  			</td>
  			<td align="right">
  				<%=eng %>점
  			</td>
  		</tr>
  		<tr>
  			<td>
  				수학
  			</td>
  			<td align="right">
  				<%=math %>점
  			</td>
  		</tr>
  		<tr>
  			<td>
  				총점
  			</td>
  			<td align="right">
  				<%=total %>점
  			</td> 
  		</tr>
  		<tr>
  			<td>
  				평균
  			</td>
  			<td align="right">
  				<%=String.format("%.2f", avg) %>점
  			</td> 
  		</tr>
  		<tr>
  			<td>
  				평가
  			</td>
  			<td align="right">
  				<%=level %>
  			</td> 
  		</tr>
  	</table>
	
</body>
</html>