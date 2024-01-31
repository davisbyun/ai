<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> boardDelete.jsp 게시글 삭제페이지  </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>

<body>
  <%
    String n1 = request.getParameter("num");
  // "1" --> int 1 형을 바꾼다.
    Integer nn1 = Integer.valueOf(n1); // String --> Integer
    int num = nn1.intValue(); // Integer --> int
  
	  //1. 드라이버 로드하기
	  Class.forName("com.mysql.jdbc.Driver");
	  //2. con 연결하기
	  String url = "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	  String userId = "root";
	  String userPwd = "1234";
	  Connection con = DriverManager.getConnection(url, userId, userPwd);
	  //3. sql문 작성하기
	  String deleteSql = "delete from boardTbl where num=?";
	  //4. sql문 실행
	  PreparedStatement pstmt = con.prepareStatement(deleteSql);
	  // ? 채우기
	  pstmt.setInt(1, num);
	  
	  pstmt.executeUpdate(); // insert문, update문, delet문 실행하는 메소드 
	    
	  response.sendRedirect("boardList.jsp");  
  
  %>


  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시글 삭제페이지  </h1> 
    </div>
  </div> 
  <div class="container">
  </div>
  <jsp:include page="../footer.jsp" ></jsp:include>
</body>
</html>