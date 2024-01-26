<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> a.jsp 파일 입니다. </h1>
   <jsp:forward page="b.jsp">
      <jsp:param value='<%= URLEncoder.encode("국어") %>' name="kor"/>
      <jsp:param value="100" name="jumsu"/>
   </jsp:forward>
</body>
</html>