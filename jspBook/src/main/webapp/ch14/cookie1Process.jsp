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
	 String id = request.getParameter("id");
	 String pwd = request.getParameter("pwd");
	 
	 if(id.equals("admin") && pwd.equals("1234")) {
	 Cookie cid = new Cookie("cookid", id);
	 Cookie cpwd = new Cookie("cookpwd", pwd) ;
	 
	 response.addCookie(cid );
	 response.addCookie(cpwd);
	%> 
	
	<%= cid %>
	<%= cpwd %>
	
	 <%
	 }
	 %>
	 
	 
</body>
</html>