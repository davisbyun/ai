<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> e.jsp 파일 입니다. </h1>
	    <%
	        String id = request.getParameter("id");
	        String phone = request.getParameter("phone");
	        String age = request.getParameter("age");
	        
	     %>
    <h3> d에서 받은 자료 </h3>
    <h3> <%= java.net.URLDecoder.decode( id ) %></h3>
    <h3> <%=  phone %></h3>
    <h3> <%= java.net.URLDecoder.decode( age ) %></h3>
</body>
</html>