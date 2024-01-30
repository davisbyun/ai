<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="UTF-8">
<title>boardDelete.jsp 글쓰기 처리 </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>

	<%
	
	 request.setCharacterEncoding("utf-8");
	 String title = request.getParameter("title");
	 String content = request.getParameter("content");
	 String writer = request.getParameter("writer");
	 String regdate = request.getParameter("regdate");
	 Date regdate1= Date.valueOf(regdate);
	 
	 //db연결
	 
      Class.forName("com.mysql.jdbc.Driver"); 
   	  
      //connection 맺기
	  String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";      //mysql연결 주소에서 스키마명 = DB명 = 데이타베이스 
      //mysql연결주소 String url= "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false"; 
      //jdbc:mysql://localhost:3306/DB명?useUnicode=true&characterEncoding=utf8
      String userid ="root"; //mysql 사용자 아이디
      String passwd ="1234"; //mysql 사용자 비번
      
      Connection con = DriverManager.getConnection(url, userid, passwd);
   
   	  //sql 문을 작성하기
   	  //insert into boardTbl (num, title, content, writer, reg_date, count) values (null, '가입인사', '잘 부탁합니다','홍길동', curdate(), 1); 
   	  String insertSql = "insert into boardtbl(num, title, content, writer, reg_date, count) values(null, ?, ?, ?, ?, 1 )";
   	  
   	   	  
   	  
   	  //?안에 실제 내용 넣기
   	  PreparedStatement pstmt = con.prepareStatement(insertSql);  //연결된 상태 위에  sql 문을 올리기 
   	  pstmt.setString(1, title);   
   	  pstmt.setString(2, content); 
   	  pstmt.setString(3, writer);
   	  pstmt.setDate(4, regdate1);
   	  
   	  //보내서 실행
   	  pstmt.executeUpdate(); //mysql 에서 실행시키기
   	  response.sendRedirect("/WebMarket/board/boardList.jsp");
   	  
	%>




  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 글쓰기 처리 </h1> 
    </div>
  </div> 
  
  
  <jsp:include page="../footer.jsp"/>
  
  </body>
  </html>
  