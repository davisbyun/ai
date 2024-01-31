<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> boardDetail.jsp 게시글 상세페이지  </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>

<body>
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 상세페이지   </h1> 
    </div>
  </div> 
  <% 
      request.setCharacterEncoding("utf-8");
  // ?num=1&title=가입인사&content=잘부탁합니다&writer=홍길동&regdate=2024-01-30&count=1
      String num = request.getParameter("num");
      String title = request.getParameter("title");
      String content = request.getParameter("content");
      String writer = request.getParameter("writer");
      String regdate = request.getParameter("regdate");
      String count = request.getParameter("count");
  %>
  
  
  <div class="container">
    <div class="table-responsive">
       <table class="table table-success table-striped">
          <tr><th class="table-info text-center">글번호</th> <th class="table-warning text-center"><%= num %> </th> </tr>
          <tr><th class="table-info text-center">글제목</th> <th class="table-warning text-center"><%= title %> </th></tr>
          <tr><th class="table-info text-center">글내용</th><th class="table-warning text-center"><%= content %> </th></tr>
          <tr><th class="table-info text-center">작성자</th><th class="table-warning text-center"><%= writer %> </th></tr>
          <tr><th class="table-info text-center">작성일</th><th class="table-warning text-center"><%= regdate %> </th></tr>
          <tr><th class="table-info text-center">조회수</th><th class="table-warning text-center"><%= count %> </th></tr>
        </table>
       <a href="boardList.jsp" class="btn btn-primary"> 게시판으로 </a>
    </div>
  </div>
  <%
    Integer count1 = Integer.valueOf(count) + 1; //조회수 1을 증가하기 위해서 정수형 변환 
    int count2 = count1.intValue();
    
    int num1 = Integer.valueOf(num).intValue();
    
    //DB에 update 시키기
     //1. 드라이버 로드하기
      Class.forName("com.mysql.jdbc.Driver");
      //2. con 연결하기
      String url = "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
      String userId = "root";
      String userPwd = "1234";
      Connection con = DriverManager.getConnection(url, userId, userPwd);
      //3. sql문 작성하기   update  boardtbl set count = count + 1 where num = 1;
      String updateSql = "update boardtbl set  count = ? where num=? ";
      //4. sql문 실행
      PreparedStatement pstmt = con.prepareStatement(updateSql);
      // ? 채우기
      pstmt.setInt(1, count2);
      pstmt.setInt(2, num1);
            
      pstmt.executeUpdate(); // insert문, update문, delet문 실행하는 메소드 
   
  %>
     
   
    
  <jsp:include page="../footer.jsp" ></jsp:include>
</body>
</html>