<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLDecoder" %>  
<%@ page import = "java.net.URLEncoder" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1> b.jsp 파일 입니다. </h1>
    <%
        String kor = request.getParameter("kor");
        String jumsu = request.getParameter("jumsu");
        
     %>
    <h3> a.jsp에서 받은 것 출력 하기 </h3>
    <h3> <%= java.net.URLDecoder.decode( kor ) %></h3>
    <h3> <%= jumsu %></h3>
   <jsp:include page="c.jsp">
      <jsp:param value="<%=  kor %>" name="kor1"/>
      <jsp:param value="<%= jumsu %>" name="jumsu1"/> 
   </jsp:include>
</body>
</html>