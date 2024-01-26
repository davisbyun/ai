<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%

request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

if (id.equals("admin") && pwd.equals("1234")  ) {
	response.sendRedirect("response01_success.jsp");
} else if (id.equals(" google " )) {
	response.sendRedirect("https://www.google.com");
}else {
		response.sendRedirect("response01_fail.jsp");
}

%>

</head>
<body>

</body>
</html>