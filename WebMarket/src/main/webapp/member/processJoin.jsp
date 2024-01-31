<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>./member/processJoin.jsp -회원가입폼 자료 DB에 입력하기 </title>
</head>
<body>
  <%
      // 1단계 mysql 드라이버를 jvm에 올려주기
        Class.forName("com.mysql.jdbc.Driver");
  
      // 2단계 Connection 맺기
        String url = "jdbc:mysql://localhost:3306/webMarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
        //mysql 연결 주소 jdbc:mysql://localhost:3306/스키마명 또는 DB명 또는 데이터베이스명 
        //String url="jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=KST&useSSL=false"; //jdbc:mysql://localhost:3306/DB명?useUnicode=true&characterEncoding=utf8
        String userid="root"; //mysql 사용자아이디
        String passwd = "1234"; // mysql 사용자비밀번호
        Connection con = DriverManager.getConnection(url, userid, passwd);
      
       // 3단계 Sql문 작성하기
        String insertSql = "insert into memberTbl( number, id, pwd, name, email) values( null, ?, ?, ?, ? )" ;
        
       // ? 안에다가 폼에 입력 받은 실제 내용을 넣는다. 
         // 폼에 입력 받은 자료를 가져오기 
       request.setCharacterEncoding("utf-8"); //한글 처리  
       String id = request.getParameter("id");
       String pwd = request.getParameter("pwd");
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       
        // ?안에 실제 내용 넣기
        PreparedStatement pstmt = con.prepareStatement(insertSql); // 연결된 상태 위에 sql문을 올리기
        pstmt.setString(1, id);// 1번 물음표에 id값을 넣어주기 
        pstmt.setString(2, pwd); //2번째 물음표에 pwd값을 넣어주기
        pstmt.setString(3, name);
        pstmt.setString(4, email);
        
        pstmt.executeUpdate(); // 4단계 보내서 mysql에서 실행시키기
        
        response.sendRedirect("/WebMarket/welcome.jsp");
     %>
</body>
</html>