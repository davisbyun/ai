<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>proVali02.jsp</h1>
  
  <%
  String id = request.getParameter("id");
  String pwd = request.getParameter("pwd");
  
  %>
  
  <h3><%= id %></h3>
  <h3><%= pwd %></h3>
</body>
</html>