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
String hobby1 = request.getParameter("hobby1");
String hobby2 = request.getParameter("hobby2");
String hobby3 = request.getParameter("hobby3");
String ok = request.getParameter("ok");
String s1 = request.getParameter("s1");

%>

<p> 선택한 취미는 ? <%= hobby1 %> <%= hobby2 %>
<%= hobby3 %>
<p> 신청여부? <%= ok %>
<p> 선택과목은? <%= s1 %>
</body>
</html>