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
   <h1> d.jsp 파일 입니다. </h1>
   
   <jsp:include page="e.jsp">
      <jsp:param value='<%= URLEncoder.encode("홍길동") %>' name="id"/>
      <jsp:param value="010-123-4567" name="phone"/>
      <jsp:param value="10살" name="age"/>
   </jsp:include>
</body>
</html>