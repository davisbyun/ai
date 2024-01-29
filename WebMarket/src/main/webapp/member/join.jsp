<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> ./member/join.jsp </title>
<link rel="stylesheet" href="./css/bootstrap.min.css" />

</head>
<body>
  <jsp:include page="../menu.jsp"></jsp:include>
  <div class="jumbotron">
    <div class="container">
        <h1 class="display-3"> 회원가입 </h1> 
    </div>
  </div> 
  <div class="container">
     <form action="processJoin.jsp"  name="join" class="form-horizontal"  method="post">
          
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
            <label class="col-sm-2 f1"> 이름 </label>
            <div class="col-sm-4">
                <input type="text" name="name" id="name" placeholder="이름입력"  class="form-control"> 
            </div>
         </div>  
         
          <div class="form-group row">
            <label class="col-sm-2 f1"> 이메일 </label>
            <div class="col-sm-4">
                <input type="text" name="email" id="email" placeholder="이메일"  class="form-control"> 
            </div>
         </div>  
         
                  <div class="form-group row">
            <div class="col-sm-offset-2  col-sm-10  col  text-center">
                <input type="submit"  class="btn btn-primary f1" value="회원가입" > 
                <input type="reset"  class="btn btn-secondary f1" value="취소">
            </div>
         </div>
          
    </form>
  </div>
  
  <div class ="container">
     <p> <a href="products.jsp"  class="btn btn-secondary"> &laquo; 상품목록 </a>
  </div>
  <jsp:include page="../footer.jsp"></jsp:include>
 
</body>
</html>