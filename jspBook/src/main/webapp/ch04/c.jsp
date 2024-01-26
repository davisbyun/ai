<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> c </title>
</head>
<body>
    <h1> c.jsp 파일 입니다. </h1>
    <%
        String kor1 = request.getParameter("kor1");
        String jumsu1 = request.getParameter("jumsu1");
    %>
    <h3> b에서 받은 자료 </h3>
    <h3> <%= java.net.URLDecoder.decode( kor1 ) %></h3>
    <h3> <%= jumsu1 %></h3>
</body>
</html>