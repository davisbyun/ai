<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="UTF-8">
<title>boardDelete.jsp 게시글 삭제하기 </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>
<body>
	<%
	 
	 String n1 = request.getParameter("num");
    //"1" int 형변환		
     Integer nn1 = Integer.valueOf(n1); //String to Integer
     int num = nn1.intValue();  //Integer to int  데이터베이스의 타입과 맞추기 위해
     
	   //1.드라이버연결
	   Class.forName("com.mysql.jdbc.Driver");
     
   
     String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";   
     String userId ="root";
     String userPwd="1234";
     
     //2. con 연결
     Connection con = DriverManager.getConnection(url, userId, userPwd); 
	 //3. sql문 작성하기
	 String deleteSql = "delete from boardTbl where num=?";
	 //4. sql문 실행
	 PreparedStatement pstmt =  con.prepareStatement(deleteSql);
	 //?
     pstmt.setInt(1, num);
	 pstmt.executeUpdate(); // insert, update, delete 문 실행하는 메소드
	   
	 response.sendRedirect("boardList.jsp");

	%>


  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 삭제 페이지 </h1> 
    </div>
  </div> 
  
  
  <jsp:include page="../footer.jsp"/>
  
  </body>
  </html>
  