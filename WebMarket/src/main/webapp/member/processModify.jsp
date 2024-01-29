<%@page import="java.nio.charset.CharsetDecoder"%>
<%@page import="java.nio.charset.Charset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processModify.jsp 회원정보 수정하기 처리 : 푬수정자료 입력받고 db를 연결해서 update하기->memberInfo로 보내기</title>
</head>
<body>

	<%
	  //폼에 입력한 자료를 jsp로 받아오기
	  request.setCharacterEncoding("utf-8");
	
	  String id = request.getParameter("id");
	  String pwd = request.getParameter("pwd");
	  String name = request.getParameter("name");
	  String email = request.getParameter("email");
	  String n1 = request.getParameter("number");
	  Integer nn1 = Integer.valueOf(n1);
	  int number = nn1.intValue();
	
	  //jsp --> db 보내기
	  
	  Class.forName("com.mysql.jdbc.Driver");
       
     
       String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";   
       String userId ="root";
       String userPwd="1234";
       
       //2. con 연결
       Connection con = DriverManager.getConnection(url, userId, userPwd); 
	   //3. sql문 작성하기
	   String updateSql = "update memberTbl set id=?, pwd=? , name =? , email=? where number=?";
	   //4. sql문 실행
	   PreparedStatement pstmt =  con.prepareStatement(updateSql);
	   //?
       
	   pstmt.setString(1, id);
       pstmt.setString(2, pwd);
       pstmt.setString(3, name);
       pstmt.setString(4, email);
       pstmt.setInt(5, number);
       
	   pstmt.executeUpdate(); // insert, update, delete 문 실행하는 메소드
	   
	   response.sendRedirect("memberInfo.jsp");
	   
	   
	  
	%>
	   
</body>
</html>