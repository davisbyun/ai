<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h2>se02.jsp</h2>
 	<%
 		String sesId = (String)session.getAttribute("sesId");  //세션명 입력--값 id가 얻어진다.
 		String sesPwd = (String)session.getAttribute("sesPwd");
 	
		if( sesId.equals("admin") && sesPwd.equals("1234")  ) {
		 	out.println("로그인유지");
		 	session.removeAttribute("sesId");
		}else {
			out.println("로그인실패");
		
		}
	%>
	
 	<%= sesId %>님
 	<%= sesPwd %>
</body>
</html>

