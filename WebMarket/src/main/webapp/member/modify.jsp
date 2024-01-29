<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %> 
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> modify.jsp 수정하기 </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
</head>
<body>
  <%
  // 파라미터로 넘어온 회원번호는 문자이기때문에 기본형 정수형으로 바꾸기 
  String n1 = request.getParameter("number");
  Integer nn1 = Integer.valueOf(n1);
  int number = nn1.intValue();
    
  //1. 드라이버 로드하기
  Class.forName("com.mysql.jdbc.Driver");
  //2. con 연결하기
  String url = "jdbc:mysql://localhost:3306/webmarket?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
  String userId = "root";
  String userPwd = "1234";
  Connection con = DriverManager.getConnection(url, userId, userPwd);
  //3. sql작성하기 con올리기
  String selectSql = "select * from membertbl where number = ?";
  PreparedStatement pstmt = con.prepareStatement(selectSql);
  // ? 채우기
  pstmt.setInt(1, number);
    
  //4. mysql으로 보내서 실행하기
  ResultSet rs = pstmt.executeQuery(); // select문을 실행할 때는 executeQuery()
  //rs변수에 담겨서 select문을 jsp로 들어온다. 
  
  while( rs.next() ) {
  
  %>
  
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 회원 정보 수정 </h1> 
    </div>
  </div> 
  <div class="container">
  
     <form action="processModify.jsp?number=<%= rs.getInt("number") %>"  name="join" class="form-horizontal"  method="post">
          
         <div class="form-group row">
            <label class="col-sm-2 f1"> 아이디 </label>
            <div class="col-sm-4">
                <input type="text" name="id" id="id"  value="<%= rs.getString("id") %> " placeholder="아이디입력" class="form-control"> 
            </div>
         </div>  
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 비밀번호 </label>
            <div class="col-sm-4">
                <input type="password" name="pwd"  id="pwd"  value="<%= rs.getString("pwd") %> "   placeholder="비밀번호"  class="form-control"> 
            </div>
         </div> 
         
          <div class="form-group row">
            <label class="col-sm-2 f1"> 이름 </label>
            <div class="col-sm-4">
                <input type="text" name="name" id="name"  value="<%= rs.getString("name") %> "   placeholder="이름입력" class="form-control"> 
            </div>
         </div> 
         
         <div class="form-group row">
            <label class="col-sm-2 f1"> 이메일 </label>
            <div class="col-sm-4">
                <input type="text" name="email" id="email" value="<%= rs.getString("email") %> " placeholder="이메일입력" class="form-control"> 
            </div>
         </div>  
                 
         <div class="form-group row">
            <div class="col-sm-offset-2  col-sm-8  col  text-center">
                <input type="submit"  class="btn btn-primary f1" value="회원정보수정"> 
                <input type="reset" class="btn btn-secondary f1" value="취소">  
            </div>
         </div> 
 
    </form>
 
  </div>
  <%
  }
  %>
    
  <jsp:include page="../footer.jsp"></jsp:include>
 
</body>
</html>