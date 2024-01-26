<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> thankCusomer.jsp </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
  <jsp:include page="menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 주문완료 </h1> 
    </div>
  </div> 
  <div class="container">
    <%
       String sCartId = "";
       String sDate = "";
       Cookie c ;
       //쿠키정보 얻기
       Cookie[] cArr = request.getCookies();
       if( cArr != null ) {
          for( int i=0; i< cArr.length; i++) {
             c  = cArr[i];
             String cookieName = c.getName(); //쿠키이름을 얻어오기 
             if( cookieName.equals("scartSD")){
                sDate = URLDecoder.decode(  ( c.getValue() ), "utf-8"  );
             }
             if( cookieName.equals( "scartId" )) {
                sCartId = URLDecoder.decode(  ( c.getValue() ), "utf-8"  );
             }
          }
       }
    
    %>  
    <h2 class="alert alert danger"> 주문해 주셔서 감사합니다.</h2>
    <p> 주문은  <%=  sDate%>에 배송될 예정입니다.
    <p> 주문번호는  <%= sCartId %> 
  
  </div>
  <div class ="container">
     <p> <a href="products.jsp"  class="btn btn-secondary"> &laquo; 상품목록 </a>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
  <%
     //섹션지우기
     session.invalidate(); 
  
     //쿠키지우기 - 쿠키별로 유효시간을 0초로 바꿔주기
     Cookie c1;
     for( int i=0; i< cArr.length; i++) {
        c1 = cArr[i];
        String n = c1.getName();
        if( n.equals ("sCartId") ) c1.setMaxAge(0);
        if( n.equals( "sCartName") )c1.setMaxAge(0);
        if( n.equals( "sCartSD")) c1.setMaxAge(0);
        if( n.equals("sCartCountry")) c1.setMaxAge(0);
        if( n.equals( "sCartZip")) c1.setMaxAge(0);
        if( n.equals( "sCartAN") )c1.setMaxAge(0);
        response.addCookie(c1); 
     }
     
  %>
  
  
</body>
</html>