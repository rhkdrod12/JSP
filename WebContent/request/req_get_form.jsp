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
		<form> 태그
		
		action ="[절대경로 | 상대경로]"
		
		form에서 작성된 정보를 summit하게 되면 action에 적혀있는 페이지로 method 방식으로 전송한다.
		
		get 방식
		
		주소에 데이터를 실어서 보내는 방식
		
	-->
	<form action="req_basic.jsp" method="get">
		<table>
			<tr>
				<th>
					<h3>회원가입 양식</h3>
					<hr />
				</th>
			</tr>
			<tr>
				<td>아이디 :</td>
				<td><input name="id" type="text" placeholder="아이디"
					required="required" autofocus="autofocus"></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input name="pw" type="password" placeholder="비밀번호"
					required="required"></td>
			</tr>
			<tr>
				<td>이메일 :</td>
				<td><input name="email" type="email"></td>
			</tr>
			<tr>
				<td>
				<!-- radio name으로 통일시켜야 여러개의 버튼을 하나의 그룹으로 취급함  -->
				전공:
				</td>
				<td>
				<input name=major type="radio" id="radio_major1" value="경영학과" checked="checked">
				<label for="radio_major1">경영학과</label>
				<input name=major type="radio" id="radio_major2" value="컴퓨터과">
				<label for="radio_major2">컴퓨터과</label>
				<input name=major type="radio" id="radio_major3" value="전기전자">
				<label for="radio_major3">전기전자</label>
				<input name=major type="radio" id="radio_major4" value="기계공학">
				<label for="radio_major4">기계공학</label>
				</td>
			</tr>
			<tr>
				<td>
				<br> 취미:
				</td>
				<td>
				<input type="checkbox" name=inter id="checkbox_inter1" value="자바">
				<label for="checkbox_inter1">자바</label>
				<input type="checkbox" name=inter id="checkbox_inter2" value="DB">
				<label for="checkbox_inter2">DB</label>
				<input type="checkbox" name=inter id="checkbox_inter3" value="JSP">
				<label for="checkbox_inter3">JSP</label>
				<input type="checkbox" name=inter id="checkbox_inter4" value="JavaScript">
				<label for="checkbox_inter4">JavaScript</label>
				</td>
			</tr>
			<tr>
			<td>
				<br> 통신사:
				</td>
				<td>
				<select name="phone1">
					<option>SKT</option>
					<option>KT</option>
					<option>LGU+</option>
				</select>
				</td>
			</tr>
			<tr>
			<td>
				<br>
				<!-- textarea 장문의 글을 쓸 수 있는 박스 -->
				자기소개:
			</td>
			<td>
				<br>
				<textarea rows="5" cols="50" name="words"></textarea>
				<br>
			</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="가입하기">
				<input type="button" value="그냥 버튼 나중에 기능 부여해서 사용">
				</td>
			</tr>
		</table>
	</form>



</body>
</html>