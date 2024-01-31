<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> logOut.jsp </title>
</head>
<body>
  <%
     session.invalidate(); //섹션을 초기화 
     response.sendRedirect("/WebMarket/welcome.jsp");
  %>
</body>
</html>