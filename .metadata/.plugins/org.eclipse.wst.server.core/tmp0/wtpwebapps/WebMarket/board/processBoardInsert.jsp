<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> processBoardInsert.jsp 글쓰기 처리  </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>

<body>
  <%
     request.setCharacterEncoding("utf-8");
     String title = request.getParameter("title");
     String content = request.getParameter("content");
     String writer = request.getParameter("writer");
     String regdate = request.getParameter("regdate");
     Date regdate1 = Date.valueOf(regdate);
     
     // 1단계 mysql 드라이버를 jvm에 올려주기
     Class.forName("com.mysql.jdbc.Driver");

     // 2단계 Connection 맺기
     String url = "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
     String userid="root"; //mysql 사용자아이디
     String passwd = "1234"; // mysql 사용자비밀번호
     Connection con = DriverManager.getConnection(url, userid, passwd);
   
     // 3단계 Sql문 작성하기
     String insertSql = "insert into boardtbl ( num, title, content, writer, reg_date, count) values( null, ?, ?, ?, ?, 1 ) " ;
     
     // ?안에 실제 내용 넣기
     PreparedStatement pstmt = con.prepareStatement(insertSql); // 연결된 상태 위에 sql문을 올리기
     pstmt.setString(1, title);
     pstmt.setString(2, content); 
     pstmt.setString(3, writer);
     pstmt.setDate(4, regdate1);
     
     pstmt.executeUpdate(); // 4단계 보내서 mysql에서 실행시키기
     
     response.sendRedirect("/WebMarket/board/boardList.jsp");
  
  %>


  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 글쓰기 처리  </h1> 
    </div>
  </div> 
  <div class="container">
  </div>
  <jsp:include page="../footer.jsp" ></jsp:include>
</body>
</html>