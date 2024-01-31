<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ./member/memberInfo.jsp </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>
<body>
  <%
     //1. 드라이버 로드하기
     Class.forName("com.mysql.jdbc.Driver");
     //2. con 연결하기
     String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
     String userId = "root";
     String userPwd = "1234";
     Connection con = DriverManager.getConnection(url, userId, userPwd);
     //3. sql작성하기 con올리기
     String selectSql = "select * from memberTbl";
     PreparedStatement pstmt = con.prepareStatement(selectSql);
     //4. mysql으로 보내서 실행하기
     ResultSet rs = pstmt.executeQuery(); // select문을 실행할 때는 executeQuery()
     //rs변수에 담겨서 select문을 jsp로 들어온다. 
     
  %>
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 회원 정보  </h1> 
    </div>
  </div> 
  <div class="container">
    <div style="padding-top: 50px">
       <table class="table table-hover">
          <tr><th>회원번호</th><th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th> <th>수정</th> <th>삭제</th>   </tr>
          <%
             while( rs.next() ) { //rs.next() 꼭 써주어야 하는 명령어 포인터 위치를 가르킨다. 
            	                   // 한줄을 출력하더라고 반드시 rs.next() 해주어야한다. 
               
           %>
           
            <tr>
              <td><%= rs.getInt("number") %></td>   <%-- "number" mysql에 있는 열이름 --%>
              <td><%= rs.getString("id") %></td>
              <td><%= rs.getString("pwd") %></td>
              <td><%= rs.getString("name") %></td>
              <td><%= rs.getString("email") %></td> 
              <td><a href="modify.jsp?number=<%= rs.getInt("number") %>" class="btn btn-primary"> 수정 </a> </td>
              <td><a href="delete.jsp?number=<%= rs.getInt("number") %>" class="btn btn-danger"> 삭제 </a> </td>
            </tr>
           
           <%  
             }
           %>
          
       </table>
    </div>
   </div>
  <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
