<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>    
<%@ page import = "java.util.ArrayList"%>
<%@ page info="웹페이지" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3장 디렉티브 태그</title>
</head>
<body>
  <h1>contentType :디렉티브 태그 </h1>
  <h4>text/html : html로 출력</h4>
  <h4> charset=utf-8 : 문자 인코딩 </h4>
  <h3> today is <%=new Date()%></h3>
  <h3> <%ArrayList alist = new ArrayList();	
  		alist.add("사과");
  		%></h3>
</body>
</html>