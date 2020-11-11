<%@page import="java.util.Collections"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/* 
		1. 정수를 저장하는 list 생성
		2. 1~45까지 랜덤한 번호를 생성하고 리스트에 저장
		3. 중복되지 않는 수자로 6개 번호를 저장
		4. 화면에 출력
		5. set을 이용해서 1~5번 재수행
	*/
	
	ArrayList<Integer> list = new ArrayList<>();
	while(list.size() < 6){
		int num = new Random().nextInt(45)+1;
		if(!list.contains(num)){
			list.add(num);
		}
	}
	Collections.sort(list);
	
	HashMap<Integer, Boolean> map = new HashMap<>();
	while(map.size() < 6){
		map.put(new Random().nextInt(45)+1, true);
	}
	
	Set<Integer> set = new HashSet<>();
	while(set.size() < 6){
		set.add(new Random().nextInt(45)+1);
	}
	Iterator<Integer> it = set.iterator();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜덤 로또 번호 뽑기</title>
</head>
<body>
	
	<h3>ArrayList 랜덤 수 뽑기</h3>
	<%=list %>

	<h3>HashMap 랜덤 수 출력</h3>
	<%=map.keySet() %>
	
	<h3>HashMap 랜덤 수 출력</h3>
	<%for(int key : map.keySet()){ %>
		<%=key %>
	<%}; %>
	
	<h3>Set 랜덤 수 출력</h3>
	<%=set.toString() %>
	
	<h3>Set 랜덤 수 출력</h3>
	<div>
		<%while(it.hasNext()){ %>
			<%=it.next() %>
		<%}; %>
	</div>
	

</body>
</html>



