<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  delete.jsp</title>
</head>
<body>
  <%
      String n1 = request.getParameter("number");
      // "1" --> int 1 형을 바꾼다.
      Integer nn1 = Integer.valueOf(n1); // String --> Integer
      int number = nn1.intValue(); // Integer --> int
      
      //1. 드라이버 로드하기
      Class.forName("com.mysql.jdbc.Driver");
      //2. con 연결하기
      String url = "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
      String userId = "root";
      String userPwd = "1234";
      Connection con = DriverManager.getConnection(url, userId, userPwd);
      //3. sql문 작성하기
      String deleteSql = "delete from memberTbl where number=?";
      //4. sql문 실행
      PreparedStatement pstmt = con.prepareStatement(deleteSql);
      // ? 채우기
      pstmt.setInt(1, number);
      
      pstmt.executeUpdate(); // insert문, update문, delet문 실행하는 메소드 
        
      response.sendRedirect("memberInfo.jsp");        
  
  %>
</body>
</html>