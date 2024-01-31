<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processShippingInfo.jsp 배송정보 -> 영수증 내용 : 쿠키생성</title>
</head>
<body>
 <%
      //한글처리
      request.setCharacterEncoding("utf-8");
     //쿠키를 만들기 객체화  
      Cookie sCartId = new Cookie( "sCartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8" ) );
      Cookie sCartName = new Cookie( "sCartName", URLEncoder.encode(request.getParameter("name"), "utf-8") );
      Cookie sCartSD = new Cookie( "sCartSD", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8" ) );
      Cookie sCartCountry = new Cookie( "sCartCountry", URLEncoder.encode(request.getParameter("country"), "utf-8" ) );
      Cookie sCartZip = new Cookie( "sCartZip", URLEncoder.encode(request.getParameter("zipCode"), "utf-8" ) );
      Cookie sCartAN = new Cookie( "sCartAN", URLEncoder.encode(request.getParameter("addressName"), "utf-8" ) );
      
      //쿠키의 생명주기를 설정하기
      sCartId.setMaxAge(24*60*60); // 24시 60분 60초 하루
      sCartName.setMaxAge(24*60*60); // 5분하려면  5*60
      sCartSD.setMaxAge(24*60*60);
      sCartCountry.setMaxAge(24*60*60);
      sCartZip.setMaxAge(24*60*60);
      sCartAN.setMaxAge(24*60*60);
      
      //응답할때 쿠키를 클라이언트(orderConfirmation.jsp)에게 보내기
       response.addCookie(sCartId);
       response.addCookie(sCartName);
       response.addCookie(sCartSD);
       response.addCookie(sCartCountry);
       response.addCookie(sCartZip);
       response.addCookie(sCartAN);
       
       // 응답할 때 강제(자동으로)로 아래 jsp로 보내기 
       response.sendRedirect("orderConfirmation.jsp");
       
       
       
       
      
 %>
</body>
</html>