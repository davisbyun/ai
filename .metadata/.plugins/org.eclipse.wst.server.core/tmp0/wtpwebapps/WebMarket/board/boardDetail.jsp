<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="UTF-8">
<title>boardDetail.jsp 게시글 상세페이지 </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>
<body>
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 상세페이지 </h1> 
    </div>
  </div> 
  <%
  
  	request.setCharacterEncoding("utf-8");
    String num = request.getParameter("num");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String writer = request.getParameter("writer");
    String regdate = request.getParameter("regdate");
    String count = request.getParameter("count");    
    
  %>
  
  
  <div class="container">
  	    
    <div style="padding-top: 50px">
	 <table class="table table-hover">
    	
    	<tr> <th>글번호</th> <th> <%= num %>  </th> </tr>
    	<tr> <th>글제목</th> <th> <%= title %>  </th> </tr>
    	<tr> <th>글내용</th> <th> <%= content %>  </th> </tr>
    	<tr> <th>작성자</th> <th> <%= writer %>  </th> </tr>
    	<tr> <th>작성일</th> <th> <%= regdate %>  </th> </tr>
    	<tr> <th>조회수</th> <th> <%= count %> </th> </tr>
    	 
     </table>	
    </div>
  </div>

   <%
   Integer count1 = Integer.valueOf(count) + 1 ;  //조회수 1을 증가하기 위해 정수형으로 변환
   int count2 = count1.intValue();
   int num1 = Integer.valueOf(num).intValue();
   
   //DB 에 update
   Class.forName("com.mysql.jdbc.Driver");
            
       String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";   
       String userId ="root";
       String userPwd="1234";
       
       //2. con 연결
       Connection con = DriverManager.getConnection(url, userId, userPwd); 
	   //3. sql문 작성하기 num, title, content, writer, reg_date, count
	   String updateSql = "update boardTbl set count = count + ? where num  = ?";
	   //4. sql문 실행
	   PreparedStatement pstmt =  con.prepareStatement(updateSql);
	   //?
       
	   pstmt.setInt(1, count2);
       pstmt.setInt(2, num1);
       
       
	   pstmt.executeUpdate(); // insert, update, delete 문 실행하는 메소드
	   
   %>
   
      <a href="boardList.jsp" class="btn btn-primary"> 게시판으로 </a> 
    
  <jsp:include page="../footer.jsp"/>
  
  </body>
  </html>
  