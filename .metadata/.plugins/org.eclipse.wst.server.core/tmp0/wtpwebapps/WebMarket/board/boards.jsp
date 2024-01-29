<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<head>
<meta charset="UTF-8">
<title>boards.jsp</title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 게시판 </h1> 
    </div>
  </div> 
  <div class="container">
     <form action="processlogin.jsp"  name="login" class="form-horizontal"  method="post">
          
         <div class="form-group row">
            <label class="col-sm-2 f1"> 아이디 </label>
            <div class="col-sm-4">
                <input type="text" name="id" id="id" placeholder="영문소문자, 숫자 12자"  class="form-control"> 
            </div>
         </div>  
    
         <div class="form-group row">
            <label class="col-sm-2 f1"> 비밀번호 </label>
            <div class="col-sm-4">
                <input type="password" name="pwd"  id="pwd"  placeholder="비밀번호" class="form-control"> 
            </div>
         </div> 
                  <div class="form-group row">
            <div class="col-sm-offset-2  col-sm-10  col  text-center">
                <input type="submit"  class="btn btn-primary f1" value="로그인" > 
               <a href="join.jsp" class="btn btn-warning">  회원가입 </a>
            </div>
         </div>
    </form>
  </div>
  
  <div class ="container">
  </div>
  
  <jsp:include page="../footer.jsp"/>
  
  </body>
  </html>
  