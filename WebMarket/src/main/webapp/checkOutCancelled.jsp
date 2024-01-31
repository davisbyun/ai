<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> checkOutCancelled.jsp </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
  <jsp:include page="menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 주문 취소 </h1> 
    </div>
  </div> 
  <div class="container">
    <h2 class="alert alert-danger"> 주문이 취소되었습니다. </h2>
  </div>
  
  <div class ="container">
     <p> <a href="products.jsp"  class="btn btn-secondary"> &laquo; 상품목록 </a>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>