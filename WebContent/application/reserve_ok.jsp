<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		[문제]
				
		1.좌석정보를 받습니다.
		2.좌석정보를 저장할 List생성
		3.application에서 좌석정보가 존재하면 2번리스트에 저장
		4.좌석정보를 비교해서 중복이 없을 때 하나씩 저장해놓을 사본리스트 생성
		4.좌석정보와 2번의 리스트를 비교해서 , 중복된 좌석이 아니라면, 사본리스트에 추가
		5.사본리스트와 좌석정보가 길이가 같다면 중복이 없으므로, 2반 리스트에 통쨰로 사본리스트를 추가
		6.application에 같은 이름으로 저장
		7.화면에 예약 성공실패의 결과를 출력해주세요.
	*/
	
	//좌석정보를 받기.
	String[] userSeats = request.getParameterValues("seat");

	//좌석정보를 저장할 List생성
	List<String> list = new ArrayList<>();

	//애플리케이션 객체에 저장되어있는 좌석 정보 List
	List<String> appList = (List<String>)application.getAttribute("list");
	
	//좌석정보를 비교해서 중복이 없을 때 하나씩 저장해놓을 사본리스트
	List<String> templist = new ArrayList<>();
		
	//html쪽에서 사용할 변수
	boolean flag = false;
	
	//유저 예약 정보가 있는지 없는지 판단, 없다면 잘못된 접근
	if(userSeats != null){
		
		//기존의 예약정보가 있는지 없는지 파악, 있다면 좌석정보 리스트에 전부 저장
		if(appList != null){
			list.addAll(appList);
		}
		
		//좌석정보 리스트와 유저 예약정보와 비교하면서 기존 좌석값이 없다면 
		//유저 예약정보만을 templist(사본리스트)에 저장
		for(String str : userSeats){
			if(!list.contains(str)){
				templist.add(str);
			}
		}
		
		//좌석예약정보와 사본리스트의 길이가 같으면 중복이 없는 것으로 판단
		//사본리스트를 좌석정보리스트에 추가하여 애플리케이션 좌석정보를 갱신
		if(templist.size() == userSeats.length){
			list.addAll(templist);
			application.setAttribute("list", list);
			flag = true;
		}
		
	}else{
		//잘못된 접근
		%><script>
			alert("잘못된 접근입니다.");
			location.href = "auth.jsp";
		</script><%
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>예매정보 출력</h3>
	
	<%if(flag){ %>
		<div>예약 성공 했습니다.</div>
		<div>예매하신 좌석은 <%=templist %> 입니다.</div>
		
	<%}else{ %>
		<div>예약 실패 했습니다.</div>
		<div>선택하신 좌석 <%=Arrays.toString(userSeats) %> 중 <%=templist.size()>0?templist.toString()+"만 가능합니다": "가능한 자리가 없습니다." %></div>
	<%} %>
	
	<button type="button" onclick="location.href='reserve.jsp'">다시 돌아가기</button>
</body>
</html>