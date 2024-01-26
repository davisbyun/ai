<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	request.setCharacterEncoding("utf-8");
	String i = request.getParameter("id");
	String p = request.getParameter("password");
	
	%>
	
	<p> <%= i %>
	<p> <%= p %>
</body>
</html>