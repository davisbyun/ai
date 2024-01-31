<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>processLogin.jsp 로그인처리하기 </title>
</head>
<body>
  <%
      request.setCharacterEncoding("utf-8");
      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
            
      //1. 드라이버 로드하기
      Class.forName("com.mysql.jdbc.Driver");
      //2. con 연결하기
      String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
      String userId = "root";
      String userPwd = "1234";
      Connection con = DriverManager.getConnection(url, userId, userPwd);
      //3. sql작성하기 con올리기
      String selectSql = "select * from membertbl where id= ?  and pwd= ? ";
      PreparedStatement pstmt = con.prepareStatement(selectSql);
      // ?를 채운다.
      pstmt.setString(1, id);
      pstmt.setString(2, pwd);
      
      //4. mysql으로 보내서 실행하기
      ResultSet rs = pstmt.executeQuery(); // select문을 실행할 때는 executeQuery()
     
      //5. 받아온 rs에 포인터 위치(rs.next() ) 하고 필드(열)를 가져오기
      String dbId="";
      String dbPwd="";
      String dbName="";
          
     //로그인 성공 : 입력받은 id와 DB의 id가 같으면 입력받은 pwd와 DB의 pwd가 같으면 
   
        if(rs.next()){ //rs.next() 자료가 있으면 true 없으면 false가 됨
        	  dbId = rs.getString("id");
         	  dbPwd = rs.getString("pwd");
         	  dbName = rs.getString("name");
         	  //**** 섹션을 만들기
         	  session.setAttribute("name", dbName); // setAttribute("섹션명", 값)
         	  session.setAttribute("id", dbId);
         	  
         	  response.sendRedirect("loginSuccess.jsp");
         	  
        } else if( id.isBlank() || pwd.isBlank() ) { 
      	   response.sendRedirect("login.jsp");
        
        } else {
        	response.sendRedirect("loginFail.jsp");
        }
      
  %>
   <h3> 로그인 실패 </h3>  
    	 
    

</body>
</html>