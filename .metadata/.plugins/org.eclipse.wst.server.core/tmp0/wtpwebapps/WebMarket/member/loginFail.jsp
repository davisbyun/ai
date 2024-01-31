<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> loginFail.jsp </title>
<script type="text/javascript">
      window.onload=function(){  //넘어오자 마자
    	  alert("로그인 실패");
      }
</script>
</head>
<body>
   <h1> 로그인 실패 </h1>
   <%
      response.sendRedirect("/WebMarket/welcome.jsp");
   %>
   
  
</body>
</html>