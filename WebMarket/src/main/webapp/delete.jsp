<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp file 장바구니에 있는 것 다 지우기 </title>
</head>
<body>
  <%
     String cartId = request.getParameter("cartId");
     if( cartId == null || cartId.trim().equals("") ) {
    	 response.sendRedirect("cart.jsp");
    	 return;
     }
     
     // 섹션을 모두 지운다.
     session.invalidate(); 
     response.sendRedirect("cart.jsp"); 
  %>
</body>
</html>