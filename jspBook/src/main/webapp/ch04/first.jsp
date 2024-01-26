<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 담당</title>
</head>
<body>
   <h3>이 파일은 first.jsp입니다. 요청담당</h3>
   <jsp:forward page="second.jsp">
   	  <jsp:param name="date" value="<%=new java.util.Date() %>"></jsp:param>
   	  <jsp:param name="age" value="10"></jsp:param>
   	  <jsp:param name="school" value='<%=java.net.URLEncoder.encode("국제컴")%>' />
   	  <jsp:param name="irum" value='<%=java.net.URLEncoder.encode("홍길동")%>' />
   	  <jsp:param name="pium" value='<%=java.net.URLEncoder.encode("코딩은 아름다워")%>' />
   </jsp:forward>
   <h4>이곳은 실행 안되는 곳</h4>
</body>
</html>