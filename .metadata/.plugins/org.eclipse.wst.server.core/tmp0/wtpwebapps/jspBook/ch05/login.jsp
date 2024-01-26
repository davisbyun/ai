<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h3> login.jsp 파일입니다 </h3>
  
  <%--  form 태그에서 jsp로 가져오기 --%>
  <%
       String id = request.getParameter("id");
       String pwd = request.getParameter("pwd");
  %>
  
  <%--  자바로 연결을 해서  --%>
  <jsp:useBean id="login"  class="jspBook.Login"></jsp:useBean>
  
  <%--  jsp에서 자바로 값을 넣기 setter   아래 2개 코드 중 <% %>나 <jsp:setProperty> 1개만 쓰면 된다.--%>
  <%
        login.setId(id);
        login.setPw(pwd);
  %>
  <jsp:setProperty property="id" name="login"/> 
  <jsp:setProperty property="pw" name="login"/>
  
  <%--  자바에서 값을 jsp로 가지고 오기  getter   --%>
  <%
      String jid = login.getId();
      String jpwd  = login.getPw(); 
  %>
  <hr>
  <jsp:getProperty property="id" name="login"/>
  <jsp:getProperty property="pw" name="login"/>
  
  <%-- 웹페이지로 응답하기  --%>
  <hr>
  <h3> <%= jid %></h3>
  <h3> <jsp:getProperty property="pw" name="login"/> </h3>
</body>
</html>