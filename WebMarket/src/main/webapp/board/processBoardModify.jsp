<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> processBoardModify.jsp - 게시글 수정하는 것 처리하는 부분 </title>
</head>
<body>
  <%
         request.setCharacterEncoding("utf-8");
  
    // 수정한 자료를 request로 받아오기( 1. 주소로 연결해 보내기 2. form태그로 보낸것 받기 )
         String num = request.getParameter("num");
         String title = request.getParameter("title");
         String content = request.getParameter("content");
         String writer = request.getParameter("writer");
         String regdate = request.getParameter("regdate");
   
         // 자료형을 변환 
         Integer n1 = Integer.valueOf(num);
         int nn1 = n1.intValue();
         
         Date regdate1 = Date.valueOf(regdate);
         
    // DB 연결하기
	    //1. 드라이버 로드하기
	      Class.forName("com.mysql.jdbc.Driver");
	      //2. con 연결하기
	      String url = "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	      String userId = "root";
	      String userPwd = "1234";
	      Connection con = DriverManager.getConnection(url, userId, userPwd);
	      //3. sql문 작성하기
	      String updateSql = "update  boardtbl set title=?, content=?, writer=?, reg_date=? where num=?";
	      //4. sql문 실행
	      PreparedStatement pstmt = con.prepareStatement(updateSql);
	      // ? 채우기
	      pstmt.setString(1, title);
	      pstmt.setString(2, content);
	      pstmt.setString(3, writer);
	      pstmt.setDate(4, regdate1); //에러가 난다 왜? regdate가 문자열이니깐 해결책 형변환해 주어야 한다.
	      pstmt.setInt(5, nn1);
	      
	      pstmt.executeUpdate(); // insert문, update문, delet문 실행하는 메소드 
	        
	      response.sendRedirect("boardList.jsp"); 
	    
    // sql쓰기
    // 게시글로 보내기 
  
  %>
</body>
</html>