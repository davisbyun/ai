<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>headerInfo.jsp파일  요청한 브라우저의 정보를 얻기</h3>
  
 	<%
	String host = request.getHeader("host");
	String lang = request.getHeader("accept-language");
	String cookie = request.getHeader("cookie");
	
	out.println(host);
	out.println(lang);
	out.println(cookie);
	
	Enumeration<String> en = request.getHeaderNames();
	while(en.hasMoreElements()) {
		String headerName = en.nextElement();
		String headerValue = request.getHeader(headerName);
	 %>
  <p>
  <hr>
	<%= headerName %> : <%= headerValue %>
	
	<%
	}	
	%>
	
</body>
</html>