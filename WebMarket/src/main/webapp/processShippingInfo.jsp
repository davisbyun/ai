<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URL" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processShippingInfo.jsp  배송정보 -> 영수증내용 : 쿠키생성</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		Cookie sCartId = new Cookie("scartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8" ) );
		Cookie sCartname = new Cookie("scartname", URLEncoder.encode(request.getParameter("name") , "utf-8" ) );
		Cookie sCartSD = new Cookie("scartSD", URLEncoder.encode(request.getParameter("shippingDate"), "utf-8" ) );
		Cookie sCartCountry = new Cookie("scartCountry", URLEncoder.encode(request.getParameter("country"), "utf-8" ) );
		Cookie sCartZip = new Cookie("scartZip", URLEncoder.encode(request.getParameter("zipCode"), "utf-8" ) );
		Cookie sCartAN = new Cookie("scartAN", URLEncoder.encode(request.getParameter("addressName"), "utf-8" ) );
		//쿠키의 생명주기 설정(하루)
		sCartId.setMaxAge(24*60*60); //시분초, 하루, 5분은 60*5
		sCartname.setMaxAge(24*60*60);
		sCartSD.setMaxAge(24*60*60);
		sCartCountry.setMaxAge(24*60*60);
		sCartZip.setMaxAge(24*60*60);
		sCartAN.setMaxAge(24*60*60);
		
		//응답할 때 쿠키를 클라이언트에게 보내기
		response.addCookie(sCartId);
		response.addCookie(sCartname);
		response.addCookie(sCartSD);
		response.addCookie(sCartCountry);
		response.addCookie(sCartZip);
		response.addCookie(sCartAN);
		
		//응답할 때 강제(자동으로)로 아래 jsp로 보내기
		response.sendRedirect("orderConfirmation.jsp");
		
		
		
	%>
</body>
</html>