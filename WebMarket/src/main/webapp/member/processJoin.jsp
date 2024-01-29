<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processJoin.jsp - 회원가입 자료 DB에 입력하기</title>
</head>
<body>
   <%
      // 
      
      Class.forName("com.mysql.jdbc.Driver"); 
   	  
      //connection 맺기
	  String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";      //mysql연결 주소에서 스키마명 = DB명 = 데이타베이스 
      //mysql연결주소 String url= "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false"; 
      //jdbc:mysql://localhost:3306/DB명?useUnicode=true&characterEncoding=utf8
      String userid ="root"; //mysql 사용자 아이디
      String passwd ="1234"; //mysql 사용자 비번
      
      Connection con = DriverManager.getConnection(url, userid, passwd);
   
   	  //sql 문을 작성하기
   	  String insertSql = "insert into memberTbl(number, id, pwd, name, email) values(null, ?, ?, ?, ? )";
   	  
   	  //?표 안에 폼에서 받은 실제 내용을 넣는다.
   	  // 폼에서 입력 받은 자료를 가져오기
   	  request.setCharacterEncoding("utf-8");
   	  String id = request.getParameter("id");
   	  String pwd = request.getParameter("pwd");
   	  String name = request.getParameter("name");
   	  String email = request.getParameter("email");
   	  
   	  //?안에 실제 내용 넣기
   	  PreparedStatement pstmt = con.prepareStatement(insertSql);  //연결된 상태 위에  sql 문을 올리기 
   	  pstmt.setString(1,id);   //1번 물음표에 id값을 넣기 String id = request.getParameter("id");의 id 아이디임
   	  pstmt.setString(2,pwd);  //2번 물음표에 비번
   	  pstmt.setString(3,name);
   	  pstmt.setString(4,email);
   	  
   	  //보내서 실행
   	  pstmt.executeUpdate(); //mysql 에서 실행시키기
   	  response.sendRedirect("/WebMarket/welcome.jsp");
   	  
   	  
   %>
</body>
</html>