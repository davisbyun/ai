<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="scss/style02.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand navbar-warning bg-warning">
      <div class="container navbar-expand navbar-bs-warning bg-warning">
        <div class="navbar-header navbar-expand navbar-warning bg-warning">
            <a class="navbar-brand navbar-expand navbar-warning bg-warning" href="/WebMarket/welcome.jsp">Home</a>
        </div>
      </div> 
        <div class="navbar-header navbar-expand navbar-danger bg-warning">    
            <a class="navbar-brand navbar-expand navbar-danger bg-warning" href="/WebMarket/products.jsp">Features</a>
        </div>    
     
        <div class="navbar-header navbar-expand navbar-danger bg-warning">    
            <a class="navbar-brand navbar-expand navbar-danger bg-warning" href="/WebMarket/board/boardList.jsp">QnA</a>
        </div>
          
      <div class="navbar-header navbar-expand navbar-danger bg-warning">
            <a class="navbar-brand navbar-expand navbar-danger bg-warning" href="/WebMarket/addProduct.jsp">Add Features(판매자)</a>
        </div>    
       
      <div class="navbar-header navbar-expand navbar-danger bg-warning">    
             <a class="navbar-brand navbar-expand navbar-danger bg-warning" href="/WebMarket/member/memberInfo.jsp">Admin(관리자)</a>
       </div>
          
         <%
            //세션 가져오기
            String name = (String)session.getAttribute("name");
         	String id = (String )session.getAttribute("id");
         	String loginOk = " 로그인 ";
         	if( name != null ) {
         		loginOk = name + "님 ";
         %>		
         <div class="navbar-header navbar-expand navbar-primary bg-primary">    
         	<div class="navbar-expand navbar-warning bg-warning"> <p><a href="#" class="link-primary">Primary link></a></p><h5><%= loginOk %></h5> &nbsp;&nbsp;
             <a class="navbar-brand navbar-expand navbar-primary bg-primary" href="/WebMarket/member/logOut.jsp"> 로그아웃 </a>
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