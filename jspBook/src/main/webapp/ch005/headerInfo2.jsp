<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>headerInfo2.jsp file</h3>
	
	<%
	String remote = request.getRemoteAddr();
	int len = request.getContentLength();
	String contentType = request.getContentType();
	String protocol = request.getProtocol();
	String method = request.getMethod();
	String url = request.getRequestURI();
	int port  = request.getServerPort();
	HttpSession se = request.getSession();
	
	out.println(remote);
	out.println(len);
	out.println(contentType);
	out.println(protocol );
	out.println(method );
	out.println(url);
	out.println(port);
	out.println(se );
	
	%>
	

</body>
</html>