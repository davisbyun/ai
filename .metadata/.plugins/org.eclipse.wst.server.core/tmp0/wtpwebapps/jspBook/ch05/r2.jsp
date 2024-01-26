<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생정보</title>
</head>
<body>
<%

request.setCharacterEncoding("utf-8");
String name = request.getParameter("name1");
String school = request.getParameter("school");
String phone = request.getParameter("phone");
String tel = request.getParameter("tel");
String email = request.getParameter("email");
%>

<p> 이름 : <%= name %>
<p> 학교 : <%= school %>
<p> 전화번호 : <%= phone %>
<p> 이메일 : <%= email %>

</body>
</html>