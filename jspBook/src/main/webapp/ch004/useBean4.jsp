<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>날짜 함수를 지원하는 자바 연결하기</h3>
	<jsp:useBean id="d1" class="java.util.Date"></jsp:useBean>
	
	<% 
	int date = d1.getDate();
	int hours = d1.getHours();
	%>
	
	<p> 날짜 : <%= date %>
	<p> 시간 : <%= hours %>
	
	
	<h3>수학을 지원하는 자바 연결하기</h3>
		
	<%
	int a1 = java.lang.Math.abs(-100);
	int max1 = java.lang.Math.max(10, 20);
	%>

	<p> <%=a1 %>
	<p> <%=max1 %>
	
	
	<h3> ArrayList 를 이용해서 자료를 저장하기 출력하기 </h3>
	<jsp:useBean id="al" class="java.util.ArrayList" scope="page"></jsp:useBean>
	
	<%
		al.add("사과");
		al.add("귤");
		al.add("배");
		al.add("사과");
		al.add("사과");
	
		String aa = (String)al.get(0);	
	%>

	<%= aa %>
	<%= al.get(1) %>
	<%= al.get(2) %>
	<%= al.get(3) %>
	
	<h1>전체 판매 과일 수 <%= al.size() %> 개</h>
	
	





</body>
</html>