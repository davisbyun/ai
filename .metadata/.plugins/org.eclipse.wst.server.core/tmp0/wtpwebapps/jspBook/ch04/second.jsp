<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import=" java.net.URLDecoder" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답 담당</title>
</head>
<body>
    <h3>second.jsp - 응답하는 곳 - 주문에 대답하기</h3>
    <h3> <%=request.getParameter("date") %> </h3>
    <h3> <%=request.getParameter("age") %> </h3>
     <% String school = request.getParameter("school"); %>
     <% String irum = request.getParameter("irum"); %> 
     <% String pium = request.getParameter("pium"); %> 
   	<h3> <%=java.net.URLDecoder.decode(school) %> </h3>
   	<h3> <%=java.net.URLDecoder.decode(irum) %> </h3>
   	<h3> <%=java.net.URLDecoder.decode(pium) %> </h3>
    
</body>
</html>