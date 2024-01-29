<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	 <nav class="navbar navbar-expand navbar-dark bg-dark">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/WebMarket/welcome.jsp">Home</a>
        </div>
        <div class="navbar-header">    
            <a class="navbar-brand" href="/WebMarket/products.jsp">전체상품</a>
        </div>    
        <div class="navbar-header">    
            <a class="navbar-brand" href="/WebMarket/board/boards.jsp">게시판</a>
        </div>  
        <div class="navbar-header">
            <a class="navbar-brand" href="/WebMarket/addProduct.jsp">상품추가(판매자)</a>
        </div>    
        <div class="navbar-header">    
             <a class="navbar-brand" href="/WebMarket/member/memberInfo.jsp">회원정보(관리자)</a>
         </div> 
         <%
            //세션 가져오기
            String name = (String)session.getAttribute("name");
         	String id = (String )session.getAttribute("id");
         	String loginOk = "로그인";
         	if( name != null ) {
         		loginOk = name + "님 ";
         %>		
         <div class="navbar-header">    
         	<div class="text-white"> <h5><%=loginOk %> </h5>&nbsp;&nbsp;
             <a class="navbar-brand" href="/WebMarket/member/logOut.jsp"> 로그아웃 </a>
         </div>
         </div>
         
         <%
         		
         	}else {
         		loginOk = "로그인";
         %>	
         <div class="navbar-header">    
             <a class="navbar-brand" href="/WebMarket/member/login.jsp"><%= loginOk %></a>
         </div>
         <%
         	}
         %>
         
     </div>
   </nav>
</body>
</html>