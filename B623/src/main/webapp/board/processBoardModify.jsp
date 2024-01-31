<%@page import="org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> processBoardModify.jsp 게시글 수정하는 것 처리하는 부분 </title>
</head>
<body>
	<%
		   request.setCharacterEncoding("utf-8");	
	  // request로 받아오기(방법1. 주소로 연결해 보내기, 방법2. form 태그로 보낸 것 받기)
	  	   String num = request.getParameter("num");
	       String title = request.getParameter("title");
		   String content = request.getParameter("content");
	       String writer = request.getParameter("writer");
	       String regdate = request.getParameter("regdate");
	       
	       Integer n1  = Integer.valueOf(num);
	       int nn1 = n1.intValue();
	       Date regdate1 = Date.valueOf(regdate);
	       
	  // DB로 연결하기 
	       //jsp --> db 보내기
	  
		   Class.forName("com.mysql.jdbc.Driver");
	
	       String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";   
	       String userId ="root";
	       String userPwd="1234";
	       
	       //2. con 연결
	       Connection con = DriverManager.getConnection(url, userId, userPwd); 
		   //3. sql문 작성하기 update boadtbl set title='바꿀 제목', content='바꿀내용', writer='바꿀사람', reg_date='2024-01-31' where num=3 ;
		   String updateSql = "update boardtbl set title=?, content=?, writer=?, reg_date=? where num=? " ;
		   //4. sql문 실행
		   PreparedStatement pstmt =  con.prepareStatement(updateSql);
		   //?
	       
				   
		    
		   
				   
		   pstmt.setString(1, title);
	       pstmt.setString(2, content);
	       pstmt.setString(3, writer);
	       pstmt.setDate(4, regdate1);  
	       pstmt.setInt(5, nn1);
	       
		   pstmt.executeUpdate(); // insert, update, delete 문 실행하는 메소드
	   
	   response.sendRedirect("boardList.jsp");
	  
	  // Sql문 쓰기
	  
	  
	  // 게시글로 보내기
	
	
	%>
	

</body>
</html>